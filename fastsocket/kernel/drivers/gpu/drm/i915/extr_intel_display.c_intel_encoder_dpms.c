
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int crtc; } ;
struct intel_encoder {int connectors_active; TYPE_1__ base; } ;


 int DRM_MODE_DPMS_ON ;
 int intel_crtc_update_dpms (int ) ;

void intel_encoder_dpms(struct intel_encoder *encoder, int mode)
{
 if (mode == DRM_MODE_DPMS_ON) {
  encoder->connectors_active = 1;

  intel_crtc_update_dpms(encoder->base.crtc);
 } else {
  encoder->connectors_active = 0;

  intel_crtc_update_dpms(encoder->base.crtc);
 }
}
