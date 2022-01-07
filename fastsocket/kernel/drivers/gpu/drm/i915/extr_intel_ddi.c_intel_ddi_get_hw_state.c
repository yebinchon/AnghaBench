
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef enum port { ____Placeholder_port } port ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DDI_BUF_CTL (int) ;
 int DDI_BUF_CTL_ENABLE ;
 int DRM_DEBUG_KMS (char*,int) ;
 int I915_READ (int ) ;
 int PIPE_A ;
 int PIPE_B ;
 int PIPE_C ;
 int PORT_A ;
 int TRANSCODER_A ;
 int TRANSCODER_C ;
 int TRANSCODER_EDP ;




 int TRANS_DDI_EDP_INPUT_MASK ;
 int TRANS_DDI_FUNC_CTL (int) ;
 int TRANS_DDI_PORT_MASK ;
 int TRANS_DDI_SELECT_PORT (int) ;
 int intel_ddi_get_encoder_port (struct intel_encoder*) ;

bool intel_ddi_get_hw_state(struct intel_encoder *encoder,
       enum pipe *pipe)
{
 struct drm_device *dev = encoder->base.dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 enum port port = intel_ddi_get_encoder_port(encoder);
 u32 tmp;
 int i;

 tmp = I915_READ(DDI_BUF_CTL(port));

 if (!(tmp & DDI_BUF_CTL_ENABLE))
  return 0;

 if (port == PORT_A) {
  tmp = I915_READ(TRANS_DDI_FUNC_CTL(TRANSCODER_EDP));

  switch (tmp & TRANS_DDI_EDP_INPUT_MASK) {
  case 131:
  case 130:
   *pipe = PIPE_A;
   break;
  case 129:
   *pipe = PIPE_B;
   break;
  case 128:
   *pipe = PIPE_C;
   break;
  }

  return 1;
 } else {
  for (i = TRANSCODER_A; i <= TRANSCODER_C; i++) {
   tmp = I915_READ(TRANS_DDI_FUNC_CTL(i));

   if ((tmp & TRANS_DDI_PORT_MASK)
       == TRANS_DDI_SELECT_PORT(port)) {
    *pipe = i;
    return 1;
   }
  }
 }

 DRM_DEBUG_KMS("No pipe for ddi port %i found\n", port);

 return 1;
}
