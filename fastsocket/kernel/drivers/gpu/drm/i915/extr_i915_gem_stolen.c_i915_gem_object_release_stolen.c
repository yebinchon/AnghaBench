
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int * stolen; } ;


 int drm_mm_put_block (int *) ;

void
i915_gem_object_release_stolen(struct drm_i915_gem_object *obj)
{
 if (obj->stolen) {
  drm_mm_put_block(obj->stolen);
  obj->stolen = ((void*)0);
 }
}
