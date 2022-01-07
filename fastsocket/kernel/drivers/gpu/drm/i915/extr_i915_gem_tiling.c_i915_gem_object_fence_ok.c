
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int size; int dev; } ;
struct drm_i915_gem_object {int gtt_offset; TYPE_1__* gtt_space; TYPE_2__ base; } ;
struct TYPE_6__ {int gen; } ;
struct TYPE_4__ {int size; } ;


 int I830_FENCE_START_MASK ;
 int I915_FENCE_START_MASK ;
 int I915_TILING_NONE ;
 TYPE_3__* INTEL_INFO (int ) ;
 int i915_gem_get_gtt_size (int ,int ,int) ;

__attribute__((used)) static bool
i915_gem_object_fence_ok(struct drm_i915_gem_object *obj, int tiling_mode)
{
 u32 size;

 if (tiling_mode == I915_TILING_NONE)
  return 1;

 if (INTEL_INFO(obj->base.dev)->gen >= 4)
  return 1;

 if (INTEL_INFO(obj->base.dev)->gen == 3) {
  if (obj->gtt_offset & ~I915_FENCE_START_MASK)
   return 0;
 } else {
  if (obj->gtt_offset & ~I830_FENCE_START_MASK)
   return 0;
 }

 size = i915_gem_get_gtt_size(obj->base.dev, obj->base.size, tiling_mode);
 if (obj->gtt_space->size != size)
  return 0;

 if (obj->gtt_offset & (size - 1))
  return 0;

 return 1;
}
