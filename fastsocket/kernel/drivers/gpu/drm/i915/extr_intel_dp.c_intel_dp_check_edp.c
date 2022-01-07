
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_DEBUG_KMS (char*,int ,int ) ;
 int I915_READ (int ) ;
 int PCH_PP_CONTROL ;
 int PCH_PP_STATUS ;
 int WARN (int,char*) ;
 struct drm_device* intel_dp_to_dev (struct intel_dp*) ;
 int ironlake_edp_have_panel_power (struct intel_dp*) ;
 int ironlake_edp_have_panel_vdd (struct intel_dp*) ;
 int is_edp (struct intel_dp*) ;

__attribute__((used)) static void
intel_dp_check_edp(struct intel_dp *intel_dp)
{
 struct drm_device *dev = intel_dp_to_dev(intel_dp);
 struct drm_i915_private *dev_priv = dev->dev_private;

 if (!is_edp(intel_dp))
  return;
 if (!ironlake_edp_have_panel_power(intel_dp) && !ironlake_edp_have_panel_vdd(intel_dp)) {
  WARN(1, "eDP powered off while attempting aux channel communication.\n");
  DRM_DEBUG_KMS("Status 0x%08x Control 0x%08x\n",
         I915_READ(PCH_PP_STATUS),
         I915_READ(PCH_PP_CONTROL));
 }
}
