
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_dp {int want_panel_vdd; int panel_power_up_delay; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_DEBUG_KMS (char*,...) ;
 int EDP_FORCE_VDD ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int PCH_PP_CONTROL ;
 int PCH_PP_STATUS ;
 int POSTING_READ (int ) ;
 int WARN (int,char*) ;
 struct drm_device* intel_dp_to_dev (struct intel_dp*) ;
 int ironlake_edp_have_panel_power (struct intel_dp*) ;
 scalar_t__ ironlake_edp_have_panel_vdd (struct intel_dp*) ;
 int ironlake_get_pp_control (struct drm_i915_private*) ;
 int ironlake_wait_panel_power_cycle (struct intel_dp*) ;
 int is_edp (struct intel_dp*) ;
 int msleep (int ) ;

void ironlake_edp_panel_vdd_on(struct intel_dp *intel_dp)
{
 struct drm_device *dev = intel_dp_to_dev(intel_dp);
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 pp;

 if (!is_edp(intel_dp))
  return;
 DRM_DEBUG_KMS("Turn eDP VDD on\n");

 WARN(intel_dp->want_panel_vdd,
      "eDP VDD already requested on\n");

 intel_dp->want_panel_vdd = 1;

 if (ironlake_edp_have_panel_vdd(intel_dp)) {
  DRM_DEBUG_KMS("eDP VDD already on\n");
  return;
 }

 if (!ironlake_edp_have_panel_power(intel_dp))
  ironlake_wait_panel_power_cycle(intel_dp);

 pp = ironlake_get_pp_control(dev_priv);
 pp |= EDP_FORCE_VDD;
 I915_WRITE(PCH_PP_CONTROL, pp);
 POSTING_READ(PCH_PP_CONTROL);
 DRM_DEBUG_KMS("PCH_PP_STATUS: 0x%08x PCH_PP_CONTROL: 0x%08x\n",
        I915_READ(PCH_PP_STATUS), I915_READ(PCH_PP_CONTROL));




 if (!ironlake_edp_have_panel_power(intel_dp)) {
  DRM_DEBUG_KMS("eDP was not running\n");
  msleep(intel_dp->panel_power_up_delay);
 }
}
