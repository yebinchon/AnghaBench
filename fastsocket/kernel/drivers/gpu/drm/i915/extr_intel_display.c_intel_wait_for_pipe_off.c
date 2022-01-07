
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
struct TYPE_2__ {int gen; } ;


 int DSL_LINEMASK_GEN2 ;
 int DSL_LINEMASK_GEN3 ;
 int I915_READ (int) ;
 int I965_PIPECONF_ACTIVE ;
 TYPE_1__* INTEL_INFO (struct drm_device*) ;
 scalar_t__ IS_GEN2 (struct drm_device*) ;
 int PIPECONF (int) ;
 int PIPEDSL (int) ;
 int WARN (int,char*) ;
 int intel_pipe_to_cpu_transcoder (struct drm_i915_private*,int) ;
 unsigned long jiffies ;
 int mdelay (int) ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 scalar_t__ wait_for (int,int) ;

void intel_wait_for_pipe_off(struct drm_device *dev, int pipe)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 enum transcoder cpu_transcoder = intel_pipe_to_cpu_transcoder(dev_priv,
              pipe);

 if (INTEL_INFO(dev)->gen >= 4) {
  int reg = PIPECONF(cpu_transcoder);


  if (wait_for((I915_READ(reg) & I965_PIPECONF_ACTIVE) == 0,
        100))
   WARN(1, "pipe_off wait timed out\n");
 } else {
  u32 last_line, line_mask;
  int reg = PIPEDSL(pipe);
  unsigned long timeout = jiffies + msecs_to_jiffies(100);

  if (IS_GEN2(dev))
   line_mask = DSL_LINEMASK_GEN2;
  else
   line_mask = DSL_LINEMASK_GEN3;


  do {
   last_line = I915_READ(reg) & line_mask;
   mdelay(5);
  } while (((I915_READ(reg) & line_mask) != last_line) &&
    time_after(timeout, jiffies));
  if (time_after(jiffies, timeout))
   WARN(1, "pipe_off wait timed out\n");
 }
}
