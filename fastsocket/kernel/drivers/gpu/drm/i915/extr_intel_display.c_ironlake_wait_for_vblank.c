
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_DEBUG_KMS (char*) ;
 scalar_t__ I915_READ (scalar_t__) ;
 scalar_t__ I915_READ_NOTRACE (scalar_t__) ;
 scalar_t__ PIPEFRAME (int) ;
 scalar_t__ wait_for (int,int) ;

__attribute__((used)) static void ironlake_wait_for_vblank(struct drm_device *dev, int pipe)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 frame, frame_reg = PIPEFRAME(pipe);

 frame = I915_READ(frame_reg);

 if (wait_for(I915_READ_NOTRACE(frame_reg) != frame, 50))
  DRM_DEBUG_KMS("vblank wait timed out\n");
}
