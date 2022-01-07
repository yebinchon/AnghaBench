
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int dummy; } ;


 int BUG () ;
 int EINVAL ;

__attribute__((used)) static int i915_gem_object_get_pages_stolen(struct drm_i915_gem_object *obj)
{
 BUG();
 return -EINVAL;
}
