
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_gem_object {struct drm_device* dev; } ;
struct drm_file {int table_lock; int object_idr; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* gem_close_object ) (struct drm_gem_object*,struct drm_file*) ;} ;


 int EINVAL ;
 int drm_gem_object_handle_unreference_unlocked (struct drm_gem_object*) ;
 int drm_gem_remove_prime_handles (struct drm_gem_object*,struct drm_file*) ;
 struct drm_gem_object* idr_find (int *,int ) ;
 int idr_remove (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct drm_gem_object*,struct drm_file*) ;

int
drm_gem_handle_delete(struct drm_file *filp, u32 handle)
{
 struct drm_device *dev;
 struct drm_gem_object *obj;
 spin_lock(&filp->table_lock);


 obj = idr_find(&filp->object_idr, handle);
 if (obj == ((void*)0)) {
  spin_unlock(&filp->table_lock);
  return -EINVAL;
 }
 dev = obj->dev;


 idr_remove(&filp->object_idr, handle);
 spin_unlock(&filp->table_lock);

 drm_gem_remove_prime_handles(obj, filp);

 if (dev->driver->gem_close_object)
  dev->driver->gem_close_object(obj, filp);
 drm_gem_object_handle_unreference_unlocked(obj);

 return 0;
}
