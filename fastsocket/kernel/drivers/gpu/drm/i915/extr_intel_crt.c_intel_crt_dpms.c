
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct drm_crtc* crtc; } ;
struct intel_encoder {int connectors_active; TYPE_1__ base; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct drm_connector {int dpms; struct drm_device* dev; } ;
struct TYPE_4__ {int gen; } ;


 int DRM_MODE_DPMS_OFF ;
 int DRM_MODE_DPMS_ON ;
 TYPE_2__* INTEL_INFO (struct drm_device*) ;
 struct intel_encoder* intel_attached_encoder (struct drm_connector*) ;
 int intel_crt_set_dpms (struct intel_encoder*,int) ;
 int intel_crtc_update_dpms (struct drm_crtc*) ;
 int intel_modeset_check_state (struct drm_device*) ;

__attribute__((used)) static void intel_crt_dpms(struct drm_connector *connector, int mode)
{
 struct drm_device *dev = connector->dev;
 struct intel_encoder *encoder = intel_attached_encoder(connector);
 struct drm_crtc *crtc;
 int old_dpms;


 if (INTEL_INFO(dev)->gen >= 5 && mode != DRM_MODE_DPMS_ON)
  mode = DRM_MODE_DPMS_OFF;

 if (mode == connector->dpms)
  return;

 old_dpms = connector->dpms;
 connector->dpms = mode;


 crtc = encoder->base.crtc;
 if (!crtc) {
  encoder->connectors_active = 0;
  return;
 }


 if (mode == DRM_MODE_DPMS_OFF)
  encoder->connectors_active = 0;
 else
  encoder->connectors_active = 1;

 if (mode < old_dpms) {

  intel_crtc_update_dpms(crtc);

  intel_crt_set_dpms(encoder, mode);
 } else {
  intel_crt_set_dpms(encoder, mode);

  intel_crtc_update_dpms(crtc);
 }

 intel_modeset_check_state(connector->dev);
}
