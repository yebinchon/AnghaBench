
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;


 int BUG () ;

int i915_gem_init_object(struct drm_gem_object *obj)
{
 BUG();

 return 0;
}
