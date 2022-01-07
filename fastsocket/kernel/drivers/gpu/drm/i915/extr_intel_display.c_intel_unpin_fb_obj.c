
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int dummy; } ;


 int i915_gem_object_unpin (struct drm_i915_gem_object*) ;
 int i915_gem_object_unpin_fence (struct drm_i915_gem_object*) ;

void intel_unpin_fb_obj(struct drm_i915_gem_object *obj)
{
 i915_gem_object_unpin_fence(obj);
 i915_gem_object_unpin(obj);
}
