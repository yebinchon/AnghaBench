
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int I915_READ (int ) ;
 int PCH_PP_STATUS ;
 int PP_ON ;
 struct drm_device* intel_dp_to_dev (struct intel_dp*) ;

__attribute__((used)) static bool ironlake_edp_have_panel_power(struct intel_dp *intel_dp)
{
 struct drm_device *dev = intel_dp_to_dev(intel_dp);
 struct drm_i915_private *dev_priv = dev->dev_private;

 return (I915_READ(PCH_PP_STATUS) & PP_ON) != 0;
}
