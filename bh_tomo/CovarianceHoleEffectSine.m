classdef CovarianceHoleEffectSine < Covariance & matlab.mixin.Copyable
    %UNTITLED2 Summary of this class goes here
    
    % B. Giroux
    % INRS-ETE
    % 2016-04-26
    methods
        function obj = CovarianceHoleEffectSine(r,a,s)
            obj@Covariance(r,a,s);
            obj.type = CovarianceModels.Hole_Effect_Sine;
        end
        function k = compute(obj, x, x0)
            h = obj.compute_h(x, x0);
            k = obj.sill * (sin(max(eps,h*2*pi))./max(eps,h*2*pi));
        end
    end
    
end
