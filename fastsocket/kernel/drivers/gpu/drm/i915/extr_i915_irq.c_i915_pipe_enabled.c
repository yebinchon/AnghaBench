
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {scalar_t__ dev_private; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef int drm_i915_private_t ;


 int I915_READ (int ) ;
 int PIPECONF (int) ;
 int PIPECONF_ENABLE ;
 int intel_pipe_to_cpu_transcoder (int *,int) ;

__attribute__((used)) static int
i915_pipe_enabled(struct drm_device *dev, int pipe)
{
 drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
 enum transcoder cpu_transcoder = intel_pipe_to_cpu_transcoder(dev_priv,
              pipe);

 return I915_READ(PIPECONF(cpu_transcoder)) & PIPECONF_ENABLE;
}
