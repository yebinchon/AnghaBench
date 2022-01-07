
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kref {int dummy; } ;
struct drm_gem_object {struct drm_device* dev; } ;
struct drm_device {TYPE_1__* driver; int struct_mutex; } ;
struct TYPE_2__ {int (* gem_free_object ) (struct drm_gem_object*) ;} ;


 int BUG_ON (int) ;
 int mutex_is_locked (int *) ;
 int stub1 (struct drm_gem_object*) ;

void
drm_gem_object_free(struct kref *kref)
{
 struct drm_gem_object *obj = (struct drm_gem_object *) kref;
 struct drm_device *dev = obj->dev;

 BUG_ON(!mutex_is_locked(&dev->struct_mutex));

 if (dev->driver->gem_free_object != ((void*)0))
  dev->driver->gem_free_object(obj);
}
