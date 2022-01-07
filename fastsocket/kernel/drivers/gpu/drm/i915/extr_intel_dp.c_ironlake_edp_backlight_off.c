
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_dp {int backlight_off_delay; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_DEBUG_KMS (char*) ;
 int EDP_BLC_ENABLE ;
 int I915_WRITE (int ,int ) ;
 int PCH_PP_CONTROL ;
 int POSTING_READ (int ) ;
 struct drm_device* intel_dp_to_dev (struct intel_dp*) ;
 int intel_panel_disable_backlight (struct drm_device*) ;
 int ironlake_get_pp_control (struct drm_i915_private*) ;
 int is_edp (struct intel_dp*) ;
 int msleep (int ) ;

void ironlake_edp_backlight_off(struct intel_dp *intel_dp)
{
 struct drm_device *dev = intel_dp_to_dev(intel_dp);
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 pp;

 if (!is_edp(intel_dp))
  return;

 intel_panel_disable_backlight(dev);

 DRM_DEBUG_KMS("\n");
 pp = ironlake_get_pp_control(dev_priv);
 pp &= ~EDP_BLC_ENABLE;
 I915_WRITE(PCH_PP_CONTROL, pp);
 POSTING_READ(PCH_PP_CONTROL);
 msleep(intel_dp->backlight_off_delay);
}
