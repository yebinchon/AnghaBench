
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct intel_encoder {int (* get_hw_state ) (struct intel_encoder*,int*) ;} ;
struct TYPE_2__ {int connector_type; struct drm_device* dev; } ;
struct intel_connector {TYPE_1__ base; struct intel_encoder* encoder; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef enum port { ____Placeholder_port } port ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DRM_MODE_CONNECTOR_DisplayPort ;
 int DRM_MODE_CONNECTOR_HDMIA ;
 int DRM_MODE_CONNECTOR_VGA ;
 int DRM_MODE_CONNECTOR_eDP ;
 int I915_READ (int ) ;
 int PORT_A ;
 int TRANSCODER_EDP ;
 int TRANS_DDI_FUNC_CTL (int) ;





 int TRANS_DDI_MODE_SELECT_MASK ;
 int intel_ddi_get_encoder_port (struct intel_encoder*) ;
 int stub1 (struct intel_encoder*,int*) ;

bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
{
 struct drm_device *dev = intel_connector->base.dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_encoder *intel_encoder = intel_connector->encoder;
 int type = intel_connector->base.connector_type;
 enum port port = intel_ddi_get_encoder_port(intel_encoder);
 enum pipe pipe = 0;
 enum transcoder cpu_transcoder;
 uint32_t tmp;

 if (!intel_encoder->get_hw_state(intel_encoder, &pipe))
  return 0;

 if (port == PORT_A)
  cpu_transcoder = TRANSCODER_EDP;
 else
  cpu_transcoder = (enum transcoder) pipe;

 tmp = I915_READ(TRANS_DDI_FUNC_CTL(cpu_transcoder));

 switch (tmp & TRANS_DDI_MODE_SELECT_MASK) {
 case 128:
 case 130:
  return (type == DRM_MODE_CONNECTOR_HDMIA);

 case 131:
  if (type == DRM_MODE_CONNECTOR_eDP)
   return 1;
 case 132:
  return (type == DRM_MODE_CONNECTOR_DisplayPort);

 case 129:
  return (type == DRM_MODE_CONNECTOR_VGA);

 default:
  return 0;
 }
}
