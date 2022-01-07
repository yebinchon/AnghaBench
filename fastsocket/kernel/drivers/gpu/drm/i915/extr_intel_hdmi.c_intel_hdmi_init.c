
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct intel_encoder {int crtc_mask; int cloneable; int type; int get_hw_state; int disable; int enable; struct drm_encoder base; } ;
struct TYPE_4__ {scalar_t__ output_reg; } ;
struct TYPE_3__ {int sdvox_reg; } ;
struct intel_digital_port {int port; TYPE_2__ dp; TYPE_1__ hdmi; struct intel_encoder base; } ;
struct intel_connector {int dummy; } ;
struct drm_device {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int DRM_MODE_ENCODER_TMDS ;
 int GFP_KERNEL ;
 int INTEL_OUTPUT_HDMI ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ) ;
 int intel_disable_hdmi ;
 int intel_enable_hdmi ;
 int intel_hdmi_enc_funcs ;
 int intel_hdmi_get_hw_state ;
 int intel_hdmi_helper_funcs ;
 int intel_hdmi_init_connector (struct intel_digital_port*,struct intel_connector*) ;
 int kfree (struct intel_digital_port*) ;
 void* kzalloc (int,int ) ;

void intel_hdmi_init(struct drm_device *dev, int sdvox_reg, enum port port)
{
 struct intel_digital_port *intel_dig_port;
 struct intel_encoder *intel_encoder;
 struct drm_encoder *encoder;
 struct intel_connector *intel_connector;

 intel_dig_port = kzalloc(sizeof(struct intel_digital_port), GFP_KERNEL);
 if (!intel_dig_port)
  return;

 intel_connector = kzalloc(sizeof(struct intel_connector), GFP_KERNEL);
 if (!intel_connector) {
  kfree(intel_dig_port);
  return;
 }

 intel_encoder = &intel_dig_port->base;
 encoder = &intel_encoder->base;

 drm_encoder_init(dev, &intel_encoder->base, &intel_hdmi_enc_funcs,
    DRM_MODE_ENCODER_TMDS);
 drm_encoder_helper_add(&intel_encoder->base, &intel_hdmi_helper_funcs);

 intel_encoder->enable = intel_enable_hdmi;
 intel_encoder->disable = intel_disable_hdmi;
 intel_encoder->get_hw_state = intel_hdmi_get_hw_state;

 intel_encoder->type = INTEL_OUTPUT_HDMI;
 intel_encoder->crtc_mask = (1 << 0) | (1 << 1) | (1 << 2);
 intel_encoder->cloneable = 0;

 intel_dig_port->port = port;
 intel_dig_port->hdmi.sdvox_reg = sdvox_reg;
 intel_dig_port->dp.output_reg = 0;

 intel_hdmi_init_connector(intel_dig_port, intel_connector);
}
