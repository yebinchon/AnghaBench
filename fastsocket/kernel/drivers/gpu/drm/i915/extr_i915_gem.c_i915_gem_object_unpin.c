
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {scalar_t__ pin_count; int pin_mappable; int * gtt_space; } ;


 int BUG_ON (int) ;

void
i915_gem_object_unpin(struct drm_i915_gem_object *obj)
{
 BUG_ON(obj->pin_count == 0);
 BUG_ON(obj->gtt_space == ((void*)0));

 if (--obj->pin_count == 0)
  obj->pin_mappable = 0;
}
