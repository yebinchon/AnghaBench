
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dev_private; } ;


 int LP_RING (int ) ;
 int i915_kernel_lost_context (struct drm_device*) ;
 int intel_ring_idle (int ) ;

__attribute__((used)) static int i915_quiescent(struct drm_device *dev)
{
 i915_kernel_lost_context(dev);
 return intel_ring_idle(LP_RING(dev->dev_private));
}
