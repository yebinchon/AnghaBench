
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ crtc; } ;
struct intel_encoder {int connectors_active; TYPE_1__ base; } ;
struct drm_connector {int dpms; int dev; } ;


 int DRM_MODE_DPMS_OFF ;
 int DRM_MODE_DPMS_ON ;
 int WARN_ON (int) ;
 struct intel_encoder* intel_attached_encoder (struct drm_connector*) ;
 int intel_encoder_dpms (struct intel_encoder*,int) ;
 int intel_modeset_check_state (int ) ;

void intel_connector_dpms(struct drm_connector *connector, int mode)
{
 struct intel_encoder *encoder = intel_attached_encoder(connector);


 if (mode != DRM_MODE_DPMS_ON)
  mode = DRM_MODE_DPMS_OFF;

 if (mode == connector->dpms)
  return;

 connector->dpms = mode;


 if (encoder->base.crtc)
  intel_encoder_dpms(encoder, mode);
 else
  WARN_ON(encoder->connectors_active != 0);

 intel_modeset_check_state(connector->dev);
}
