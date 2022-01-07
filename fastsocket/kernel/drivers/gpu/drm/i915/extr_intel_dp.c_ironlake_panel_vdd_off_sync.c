
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_dp {int panel_power_down_delay; int want_panel_vdd; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {int mutex; } ;
struct drm_device {TYPE_1__ mode_config; struct drm_i915_private* dev_private; } ;


 int DRM_DEBUG_KMS (char*,int ,int ) ;
 int EDP_FORCE_VDD ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int PCH_PP_CONTROL ;
 int PCH_PP_STATUS ;
 int POSTING_READ (int ) ;
 int WARN_ON (int) ;
 struct drm_device* intel_dp_to_dev (struct intel_dp*) ;
 scalar_t__ ironlake_edp_have_panel_vdd (struct intel_dp*) ;
 int ironlake_get_pp_control (struct drm_i915_private*) ;
 int msleep (int ) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static void ironlake_panel_vdd_off_sync(struct intel_dp *intel_dp)
{
 struct drm_device *dev = intel_dp_to_dev(intel_dp);
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 pp;

 WARN_ON(!mutex_is_locked(&dev->mode_config.mutex));

 if (!intel_dp->want_panel_vdd && ironlake_edp_have_panel_vdd(intel_dp)) {
  pp = ironlake_get_pp_control(dev_priv);
  pp &= ~EDP_FORCE_VDD;
  I915_WRITE(PCH_PP_CONTROL, pp);
  POSTING_READ(PCH_PP_CONTROL);


  DRM_DEBUG_KMS("PCH_PP_STATUS: 0x%08x PCH_PP_CONTROL: 0x%08x\n",
         I915_READ(PCH_PP_STATUS), I915_READ(PCH_PP_CONTROL));

  msleep(intel_dp->panel_power_down_delay);
 }
}
