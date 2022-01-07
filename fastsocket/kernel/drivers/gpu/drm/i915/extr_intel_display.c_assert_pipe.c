
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int quirks; int dev; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int HSW_PWR_WELL_DRIVER ;
 int HSW_PWR_WELL_ENABLE ;
 int I915_READ (int) ;
 scalar_t__ IS_HASWELL (int ) ;
 int PIPECONF (int) ;
 int PIPECONF_ENABLE ;
 int PIPE_A ;
 int QUIRK_PIPEA_FORCE ;
 int TRANSCODER_EDP ;
 int WARN (int,char*,int ,int ,int ) ;
 int intel_pipe_to_cpu_transcoder (struct drm_i915_private*,int) ;
 int pipe_name (int) ;
 int state_string (int) ;

void assert_pipe(struct drm_i915_private *dev_priv,
   enum pipe pipe, bool state)
{
 int reg;
 u32 val;
 bool cur_state;
 enum transcoder cpu_transcoder = intel_pipe_to_cpu_transcoder(dev_priv,
              pipe);


 if (pipe == PIPE_A && dev_priv->quirks & QUIRK_PIPEA_FORCE)
  state = 1;

 if (IS_HASWELL(dev_priv->dev) && cpu_transcoder != TRANSCODER_EDP &&
     !(I915_READ(HSW_PWR_WELL_DRIVER) & HSW_PWR_WELL_ENABLE)) {
  cur_state = 0;
 } else {
  reg = PIPECONF(cpu_transcoder);
  val = I915_READ(reg);
  cur_state = !!(val & PIPECONF_ENABLE);
 }

 WARN(cur_state != state,
      "pipe %c assertion failure (expected %s, current %s)\n",
      pipe_name(pipe), state_string(state), state_string(cur_state));
}
