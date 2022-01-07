
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_hdmi {int sdvox_reg; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 scalar_t__ HAS_PCH_CPT (struct drm_device*) ;
 int I915_READ (int ) ;
 int PORT_TO_PIPE (int) ;
 int PORT_TO_PIPE_CPT (int) ;
 int SDVO_ENABLE ;
 struct intel_hdmi* enc_to_intel_hdmi (TYPE_1__*) ;

__attribute__((used)) static bool intel_hdmi_get_hw_state(struct intel_encoder *encoder,
        enum pipe *pipe)
{
 struct drm_device *dev = encoder->base.dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(&encoder->base);
 u32 tmp;

 tmp = I915_READ(intel_hdmi->sdvox_reg);

 if (!(tmp & SDVO_ENABLE))
  return 0;

 if (HAS_PCH_CPT(dev))
  *pipe = PORT_TO_PIPE_CPT(tmp);
 else
  *pipe = PORT_TO_PIPE(tmp);

 return 1;
}
