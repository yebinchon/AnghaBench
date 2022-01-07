
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct intel_dp {int backlight_on_delay; } ;
struct TYPE_5__ {int crtc; struct drm_device* dev; } ;
struct TYPE_4__ {TYPE_2__ base; } ;
struct intel_digital_port {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_6__ {int pipe; } ;


 int DRM_DEBUG_KMS (char*) ;
 int EDP_BLC_ENABLE ;
 int I915_WRITE (int ,int ) ;
 int PCH_PP_CONTROL ;
 int POSTING_READ (int ) ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 int intel_panel_enable_backlight (struct drm_device*,int) ;
 int ironlake_get_pp_control (struct drm_i915_private*) ;
 int is_edp (struct intel_dp*) ;
 int msleep (int ) ;
 TYPE_3__* to_intel_crtc (int ) ;

void ironlake_edp_backlight_on(struct intel_dp *intel_dp)
{
 struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 struct drm_device *dev = intel_dig_port->base.base.dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 int pipe = to_intel_crtc(intel_dig_port->base.base.crtc)->pipe;
 u32 pp;

 if (!is_edp(intel_dp))
  return;

 DRM_DEBUG_KMS("\n");






 msleep(intel_dp->backlight_on_delay);
 pp = ironlake_get_pp_control(dev_priv);
 pp |= EDP_BLC_ENABLE;
 I915_WRITE(PCH_PP_CONTROL, pp);
 POSTING_READ(PCH_PP_CONTROL);

 intel_panel_enable_backlight(dev, pipe);
}
