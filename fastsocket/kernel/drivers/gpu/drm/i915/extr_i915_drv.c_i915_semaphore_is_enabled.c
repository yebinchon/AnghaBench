
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {int dummy; } ;
struct TYPE_2__ {int gen; } ;


 TYPE_1__* INTEL_INFO (struct drm_device*) ;
 scalar_t__ i915_semaphores ;
 scalar_t__ intel_iommu_gfx_mapped ;

bool i915_semaphore_is_enabled(struct drm_device *dev)
{
 if (INTEL_INFO(dev)->gen < 6)
  return 0;

 if (i915_semaphores >= 0)
  return i915_semaphores;







 return 1;
}
