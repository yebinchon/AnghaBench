
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
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int I915_READ (int ) ;
 int PORT_TO_PIPE (int) ;
 int TV_CTL ;
 int TV_ENC_ENABLE ;

__attribute__((used)) static bool
intel_tv_get_hw_state(struct intel_encoder *encoder, enum pipe *pipe)
{
 struct drm_device *dev = encoder->base.dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 tmp = I915_READ(TV_CTL);

 if (!(tmp & TV_ENC_ENABLE))
  return 0;

 *pipe = PORT_TO_PIPE(tmp);

 return 1;
}
