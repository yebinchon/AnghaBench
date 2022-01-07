
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int fence_dirty; int fence_reg; scalar_t__ tiling_mode; } ;


 int I915_FENCE_REG_NONE ;
 int i915_gem_release_mmap (struct drm_i915_gem_object*) ;

__attribute__((used)) static inline void i915_gem_object_fence_lost(struct drm_i915_gem_object *obj)
{
 if (obj->tiling_mode)
  i915_gem_release_mmap(obj);




 obj->fence_dirty = 0;
 obj->fence_reg = I915_FENCE_REG_NONE;
}
