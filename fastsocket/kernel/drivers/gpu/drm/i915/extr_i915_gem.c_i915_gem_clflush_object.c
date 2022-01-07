
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {scalar_t__ cache_level; int * pages; scalar_t__ stolen; } ;


 scalar_t__ I915_CACHE_NONE ;
 int drm_clflush_sg (int *) ;
 int trace_i915_gem_object_clflush (struct drm_i915_gem_object*) ;

void
i915_gem_clflush_object(struct drm_i915_gem_object *obj)
{




 if (obj->pages == ((void*)0))
  return;





 if (obj->stolen)
  return;
 if (obj->cache_level != I915_CACHE_NONE)
  return;

 trace_i915_gem_object_clflush(obj);

 drm_clflush_sg(obj->pages);
}
