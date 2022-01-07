
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int gen; } ;


 int I915_TILING_NONE ;
 TYPE_1__* INTEL_INFO (struct drm_device*) ;
 scalar_t__ IS_G33 (struct drm_device*) ;
 int i915_gem_get_gtt_size (struct drm_device*,int,int) ;

uint32_t
i915_gem_get_gtt_alignment(struct drm_device *dev, uint32_t size,
      int tiling_mode, bool fenced)
{




 if (INTEL_INFO(dev)->gen >= 4 || (!fenced && IS_G33(dev)) ||
     tiling_mode == I915_TILING_NONE)
  return 4096;





 return i915_gem_get_gtt_size(dev, size, tiling_mode);
}
