
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int pages; } ;


 int kfree (int ) ;
 int sg_free_table (int ) ;

__attribute__((used)) static void i915_gem_object_put_pages_stolen(struct drm_i915_gem_object *obj)
{

 sg_free_table(obj->pages);
 kfree(obj->pages);
}
