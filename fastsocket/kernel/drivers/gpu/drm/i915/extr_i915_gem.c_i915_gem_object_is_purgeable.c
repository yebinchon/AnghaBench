
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {scalar_t__ madv; } ;


 scalar_t__ I915_MADV_DONTNEED ;

__attribute__((used)) static inline int
i915_gem_object_is_purgeable(struct drm_i915_gem_object *obj)
{
 return obj->madv == I915_MADV_DONTNEED;
}
