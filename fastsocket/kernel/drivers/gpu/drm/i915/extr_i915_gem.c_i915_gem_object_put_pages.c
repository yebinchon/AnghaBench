
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object_ops {int (* put_pages ) (struct drm_i915_gem_object*) ;} ;
struct drm_i915_gem_object {int * pages; int gtt_list; scalar_t__ pages_pin_count; int gtt_space; struct drm_i915_gem_object_ops* ops; } ;


 int BUG_ON (int ) ;
 int EBUSY ;
 scalar_t__ i915_gem_object_is_purgeable (struct drm_i915_gem_object*) ;
 int i915_gem_object_truncate (struct drm_i915_gem_object*) ;
 int list_del (int *) ;
 int stub1 (struct drm_i915_gem_object*) ;

int
i915_gem_object_put_pages(struct drm_i915_gem_object *obj)
{
 const struct drm_i915_gem_object_ops *ops = obj->ops;

 if (obj->pages == ((void*)0))
  return 0;

 BUG_ON(obj->gtt_space);

 if (obj->pages_pin_count)
  return -EBUSY;




 list_del(&obj->gtt_list);

 ops->put_pages(obj);
 obj->pages = ((void*)0);

 if (i915_gem_object_is_purgeable(obj))
  i915_gem_object_truncate(obj);

 return 0;
}
