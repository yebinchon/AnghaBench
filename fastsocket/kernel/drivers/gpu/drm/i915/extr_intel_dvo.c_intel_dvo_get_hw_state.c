
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct TYPE_3__ {int dvo_reg; } ;
struct intel_dvo {TYPE_1__ dev; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DVO_ENABLE ;
 int I915_READ (int ) ;
 int PORT_TO_PIPE (int) ;
 struct intel_dvo* enc_to_intel_dvo (TYPE_2__*) ;

__attribute__((used)) static bool intel_dvo_get_hw_state(struct intel_encoder *encoder,
       enum pipe *pipe)
{
 struct drm_device *dev = encoder->base.dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_dvo *intel_dvo = enc_to_intel_dvo(&encoder->base);
 u32 tmp;

 tmp = I915_READ(intel_dvo->dev.dvo_reg);

 if (!(tmp & DVO_ENABLE))
  return 0;

 *pipe = PORT_TO_PIPE(tmp);

 return 1;
}
