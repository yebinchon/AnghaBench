
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {int dummy; } ;
struct TYPE_2__ {int gen; } ;


 TYPE_1__* INTEL_INFO (struct drm_device*) ;
 scalar_t__ i915_enable_ppgtt ;
 scalar_t__ intel_iommu_gfx_mapped ;

__attribute__((used)) static bool
intel_enable_ppgtt(struct drm_device *dev)
{
 if (i915_enable_ppgtt >= 0)
  return i915_enable_ppgtt;







 return 1;
}
