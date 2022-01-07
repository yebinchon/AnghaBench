
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int active; scalar_t__ gtt_space; } ;



__attribute__((used)) static inline bool
i915_gem_object_is_inactive(struct drm_i915_gem_object *obj)
{
 return obj->gtt_space && !obj->active;
}
