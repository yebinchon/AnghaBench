
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int dvo_reg; } ;
struct intel_dvo {TYPE_1__ dev; } ;
struct drm_i915_private {int dummy; } ;
struct drm_display_mode {int flags; int type; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;


 int DRM_MODE_FLAG_PHSYNC ;
 int DRM_MODE_FLAG_PVSYNC ;
 int DRM_MODE_TYPE_PREFERRED ;
 int DVO_ENABLE ;
 int DVO_HSYNC_ACTIVE_HIGH ;
 int DVO_PIPE_B_SELECT ;
 int DVO_VSYNC_ACTIVE_HIGH ;
 int I915_READ (int ) ;
 struct intel_dvo* intel_attached_dvo (struct drm_connector*) ;
 struct drm_display_mode* intel_crtc_mode_get (struct drm_device*,struct drm_crtc*) ;
 struct drm_crtc* intel_get_crtc_for_pipe (struct drm_device*,int) ;

__attribute__((used)) static struct drm_display_mode *
intel_dvo_get_current_mode(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
 uint32_t dvo_val = I915_READ(intel_dvo->dev.dvo_reg);
 struct drm_display_mode *mode = ((void*)0);




 if (dvo_val & DVO_ENABLE) {
  struct drm_crtc *crtc;
  int pipe = (dvo_val & DVO_PIPE_B_SELECT) ? 1 : 0;

  crtc = intel_get_crtc_for_pipe(dev, pipe);
  if (crtc) {
   mode = intel_crtc_mode_get(dev, crtc);
   if (mode) {
    mode->type |= DRM_MODE_TYPE_PREFERRED;
    if (dvo_val & DVO_HSYNC_ACTIVE_HIGH)
     mode->flags |= DRM_MODE_FLAG_PHSYNC;
    if (dvo_val & DVO_VSYNC_ACTIVE_HIGH)
     mode->flags |= DRM_MODE_FLAG_PVSYNC;
   }
  }
 }

 return mode;
}
