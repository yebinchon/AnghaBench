
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int pages_pin_count; int * pages; } ;


 int BUG_ON (int ) ;

__attribute__((used)) static inline void i915_gem_object_pin_pages(struct drm_i915_gem_object *obj)
{
 BUG_ON(obj->pages == ((void*)0));
 obj->pages_pin_count++;
}
