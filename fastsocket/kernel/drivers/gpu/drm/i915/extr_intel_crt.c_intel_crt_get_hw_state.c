
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crt {int adpa_reg; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int ADPA_DAC_ENABLE ;
 scalar_t__ HAS_PCH_CPT (struct drm_device*) ;
 int I915_READ (int ) ;
 int PORT_TO_PIPE (int) ;
 int PORT_TO_PIPE_CPT (int) ;
 struct intel_crt* intel_encoder_to_crt (struct intel_encoder*) ;

__attribute__((used)) static bool intel_crt_get_hw_state(struct intel_encoder *encoder,
       enum pipe *pipe)
{
 struct drm_device *dev = encoder->base.dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_crt *crt = intel_encoder_to_crt(encoder);
 u32 tmp;

 tmp = I915_READ(crt->adpa_reg);

 if (!(tmp & ADPA_DAC_ENABLE))
  return 0;

 if (HAS_PCH_CPT(dev))
  *pipe = PORT_TO_PIPE_CPT(tmp);
 else
  *pipe = PORT_TO_PIPE(tmp);

 return 1;
}
