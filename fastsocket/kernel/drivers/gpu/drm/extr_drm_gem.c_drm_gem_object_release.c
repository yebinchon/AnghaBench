
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {scalar_t__ filp; } ;


 int fput (scalar_t__) ;

void
drm_gem_object_release(struct drm_gem_object *obj)
{
 if (obj->filp)
     fput(obj->filp);
}
