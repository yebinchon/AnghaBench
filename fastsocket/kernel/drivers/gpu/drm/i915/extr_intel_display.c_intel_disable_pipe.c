
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int quirks; int dev; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int I915_READ (int) ;
 int I915_WRITE (int,int) ;
 int PIPECONF (int) ;
 int PIPECONF_ENABLE ;
 int PIPE_A ;
 int QUIRK_PIPEA_FORCE ;
 int assert_planes_disabled (struct drm_i915_private*,int) ;
 int intel_pipe_to_cpu_transcoder (struct drm_i915_private*,int) ;
 int intel_wait_for_pipe_off (int ,int) ;

__attribute__((used)) static void intel_disable_pipe(struct drm_i915_private *dev_priv,
          enum pipe pipe)
{
 enum transcoder cpu_transcoder = intel_pipe_to_cpu_transcoder(dev_priv,
              pipe);
 int reg;
 u32 val;





 assert_planes_disabled(dev_priv, pipe);


 if (pipe == PIPE_A && (dev_priv->quirks & QUIRK_PIPEA_FORCE))
  return;

 reg = PIPECONF(cpu_transcoder);
 val = I915_READ(reg);
 if ((val & PIPECONF_ENABLE) == 0)
  return;

 I915_WRITE(reg, val & ~PIPECONF_ENABLE);
 intel_wait_for_pipe_off(dev_priv->dev, pipe);
}
