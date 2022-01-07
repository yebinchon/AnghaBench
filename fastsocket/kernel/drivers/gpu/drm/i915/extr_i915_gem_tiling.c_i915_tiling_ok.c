
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {int dummy; } ;
struct TYPE_2__ {int gen; } ;


 scalar_t__ HAS_128_BYTE_Y_TILING (struct drm_device*) ;
 int I830_FENCE_MAX_SIZE_VAL ;
 int I915_TILING_NONE ;
 int I915_TILING_Y ;
 int I965_FENCE_MAX_PITCH_VAL ;
 TYPE_1__* INTEL_INFO (struct drm_device*) ;
 scalar_t__ IS_GEN2 (struct drm_device*) ;
 scalar_t__ IS_GEN3 (struct drm_device*) ;

__attribute__((used)) static bool
i915_tiling_ok(struct drm_device *dev, int stride, int size, int tiling_mode)
{
 int tile_width;


 if (tiling_mode == I915_TILING_NONE)
  return 1;

 if (IS_GEN2(dev) ||
     (tiling_mode == I915_TILING_Y && HAS_128_BYTE_Y_TILING(dev)))
  tile_width = 128;
 else
  tile_width = 512;


 if (INTEL_INFO(dev)->gen >= 4) {


  if (stride / 128 > I965_FENCE_MAX_PITCH_VAL)
   return 0;
 } else {
  if (stride > 8192)
   return 0;

  if (IS_GEN3(dev)) {
   if (size > I830_FENCE_MAX_SIZE_VAL << 20)
    return 0;
  } else {
   if (size > I830_FENCE_MAX_SIZE_VAL << 19)
    return 0;
  }
 }


 if (INTEL_INFO(dev)->gen >= 4) {
  if (stride & (tile_width - 1))
   return 0;
  return 1;
 }


 if (stride < tile_width)
  return 0;

 if (stride & (stride - 1))
  return 0;

 return 1;
}
