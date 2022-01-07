
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct drm_crtc* crtc; } ;
struct TYPE_4__ {int connectors_active; TYPE_1__ base; } ;
struct intel_sdvo {int attached_output; TYPE_2__ base; } ;
struct drm_crtc {int dummy; } ;
struct drm_connector {int dpms; int dev; } ;


 int DRM_MODE_DPMS_OFF ;
 int DRM_MODE_DPMS_ON ;
 struct intel_sdvo* intel_attached_sdvo (struct drm_connector*) ;
 int intel_crtc_update_dpms (struct drm_crtc*) ;
 int intel_modeset_check_state (int ) ;
 int intel_sdvo_set_active_outputs (struct intel_sdvo*,int ) ;
 int intel_sdvo_set_encoder_power_state (struct intel_sdvo*,int) ;

__attribute__((used)) static void intel_sdvo_dpms(struct drm_connector *connector, int mode)
{
 struct drm_crtc *crtc;
 struct intel_sdvo *intel_sdvo = intel_attached_sdvo(connector);


 if (mode != DRM_MODE_DPMS_ON)
  mode = DRM_MODE_DPMS_OFF;

 if (mode == connector->dpms)
  return;

 connector->dpms = mode;


 crtc = intel_sdvo->base.base.crtc;
 if (!crtc) {
  intel_sdvo->base.connectors_active = 0;
  return;
 }

 if (mode != DRM_MODE_DPMS_ON) {
  intel_sdvo_set_active_outputs(intel_sdvo, 0);
  if (0)
   intel_sdvo_set_encoder_power_state(intel_sdvo, mode);

  intel_sdvo->base.connectors_active = 0;

  intel_crtc_update_dpms(crtc);
 } else {
  intel_sdvo->base.connectors_active = 1;

  intel_crtc_update_dpms(crtc);

  if (0)
   intel_sdvo_set_encoder_power_state(intel_sdvo, mode);
  intel_sdvo_set_active_outputs(intel_sdvo, intel_sdvo->attached_output);
 }

 intel_modeset_check_state(connector->dev);
}
