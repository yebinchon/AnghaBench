
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_dp {int want_panel_vdd; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_DEBUG_KMS (char*) ;
 int EDP_BLC_ENABLE ;
 int EDP_FORCE_VDD ;
 int I915_WRITE (int ,int) ;
 int PANEL_POWER_RESET ;
 int PCH_PP_CONTROL ;
 int POSTING_READ (int ) ;
 int POWER_TARGET_ON ;
 int WARN (int,char*) ;
 struct drm_device* intel_dp_to_dev (struct intel_dp*) ;
 int ironlake_get_pp_control (struct drm_i915_private*) ;
 int ironlake_wait_panel_off (struct intel_dp*) ;
 int is_edp (struct intel_dp*) ;

void ironlake_edp_panel_off(struct intel_dp *intel_dp)
{
 struct drm_device *dev = intel_dp_to_dev(intel_dp);
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 pp;

 if (!is_edp(intel_dp))
  return;

 DRM_DEBUG_KMS("Turn eDP power off\n");

 WARN(!intel_dp->want_panel_vdd, "Need VDD to turn off panel\n");

 pp = ironlake_get_pp_control(dev_priv);


 pp &= ~(POWER_TARGET_ON | EDP_FORCE_VDD | PANEL_POWER_RESET | EDP_BLC_ENABLE);
 I915_WRITE(PCH_PP_CONTROL, pp);
 POSTING_READ(PCH_PP_CONTROL);

 intel_dp->want_panel_vdd = 0;

 ironlake_wait_panel_off(intel_dp);
}
