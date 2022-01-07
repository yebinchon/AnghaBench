
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct intel_encoder {int crtc_mask; int cloneable; int hot_plug; int type; int get_hw_state; int post_disable; int disable; int pre_enable; int enable; struct drm_encoder base; } ;
struct TYPE_4__ {void* output_reg; } ;
struct TYPE_3__ {void* sdvox_reg; } ;
struct intel_digital_port {int port; int port_reversal; TYPE_2__ dp; TYPE_1__ hdmi; struct intel_encoder base; } ;
struct intel_connector {int port; int port_reversal; TYPE_2__ dp; TYPE_1__ hdmi; struct intel_encoder base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef enum port { ____Placeholder_port } port ;


 void* DDI_BUF_CTL (int) ;
 int DDI_BUF_PORT_REVERSAL ;
 int DRM_MODE_ENCODER_TMDS ;
 int GFP_KERNEL ;
 int I915_READ (void*) ;
 int INTEL_OUTPUT_UNKNOWN ;
 int PORT_A ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ) ;
 int intel_ddi_funcs ;
 int intel_ddi_get_hw_state ;
 int intel_ddi_helper_funcs ;
 int intel_ddi_hot_plug ;
 int intel_ddi_post_disable ;
 int intel_ddi_pre_enable ;
 int intel_disable_ddi ;
 int intel_dp_init_connector (struct intel_digital_port*,struct intel_digital_port*) ;
 int intel_enable_ddi ;
 int intel_hdmi_init_connector (struct intel_digital_port*,struct intel_digital_port*) ;
 int kfree (struct intel_digital_port*) ;
 struct intel_digital_port* kzalloc (int,int ) ;

void intel_ddi_init(struct drm_device *dev, enum port port)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_digital_port *intel_dig_port;
 struct intel_encoder *intel_encoder;
 struct drm_encoder *encoder;
 struct intel_connector *hdmi_connector = ((void*)0);
 struct intel_connector *dp_connector = ((void*)0);

 intel_dig_port = kzalloc(sizeof(struct intel_digital_port), GFP_KERNEL);
 if (!intel_dig_port)
  return;

 dp_connector = kzalloc(sizeof(struct intel_connector), GFP_KERNEL);
 if (!dp_connector) {
  kfree(intel_dig_port);
  return;
 }

 if (port != PORT_A) {
  hdmi_connector = kzalloc(sizeof(struct intel_connector),
      GFP_KERNEL);
  if (!hdmi_connector) {
   kfree(dp_connector);
   kfree(intel_dig_port);
   return;
  }
 }

 intel_encoder = &intel_dig_port->base;
 encoder = &intel_encoder->base;

 drm_encoder_init(dev, encoder, &intel_ddi_funcs,
    DRM_MODE_ENCODER_TMDS);
 drm_encoder_helper_add(encoder, &intel_ddi_helper_funcs);

 intel_encoder->enable = intel_enable_ddi;
 intel_encoder->pre_enable = intel_ddi_pre_enable;
 intel_encoder->disable = intel_disable_ddi;
 intel_encoder->post_disable = intel_ddi_post_disable;
 intel_encoder->get_hw_state = intel_ddi_get_hw_state;

 intel_dig_port->port = port;
 intel_dig_port->port_reversal = I915_READ(DDI_BUF_CTL(port)) &
     DDI_BUF_PORT_REVERSAL;
 if (hdmi_connector)
  intel_dig_port->hdmi.sdvox_reg = DDI_BUF_CTL(port);
 else
  intel_dig_port->hdmi.sdvox_reg = 0;
 intel_dig_port->dp.output_reg = DDI_BUF_CTL(port);

 intel_encoder->type = INTEL_OUTPUT_UNKNOWN;
 intel_encoder->crtc_mask = (1 << 0) | (1 << 1) | (1 << 2);
 intel_encoder->cloneable = 0;
 intel_encoder->hot_plug = intel_ddi_hot_plug;

 if (hdmi_connector)
  intel_hdmi_init_connector(intel_dig_port, hdmi_connector);
 intel_dp_init_connector(intel_dig_port, dp_connector);
}
