
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_2__ {int gen; } ;


 int DRM_DEBUG_KMS (char*) ;
 int I915_READ (int) ;
 int I915_WRITE (int,int) ;
 TYPE_1__* INTEL_INFO (struct drm_device*) ;
 int PIPESTAT (int) ;
 int PIPE_VBLANK_INTERRUPT_STATUS ;
 int ironlake_wait_for_vblank (struct drm_device*,int) ;
 scalar_t__ wait_for (int,int) ;

void intel_wait_for_vblank(struct drm_device *dev, int pipe)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 int pipestat_reg = PIPESTAT(pipe);

 if (INTEL_INFO(dev)->gen >= 5) {
  ironlake_wait_for_vblank(dev, pipe);
  return;
 }
 I915_WRITE(pipestat_reg,
     I915_READ(pipestat_reg) | PIPE_VBLANK_INTERRUPT_STATUS);


 if (wait_for(I915_READ(pipestat_reg) &
       PIPE_VBLANK_INTERRUPT_STATUS,
       50))
  DRM_DEBUG_KMS("vblank wait timed out\n");
}
