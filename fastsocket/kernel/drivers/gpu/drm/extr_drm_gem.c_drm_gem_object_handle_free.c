
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int refcount; int name; struct drm_device* dev; } ;
struct drm_device {int object_name_lock; int object_name_idr; } ;


 int drm_gem_object_ref_bug ;
 int idr_remove (int *,int ) ;
 int kref_put (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void drm_gem_object_handle_free(struct drm_gem_object *obj)
{
 struct drm_device *dev = obj->dev;


 spin_lock(&dev->object_name_lock);
 if (obj->name) {
  idr_remove(&dev->object_name_idr, obj->name);
  obj->name = 0;
  spin_unlock(&dev->object_name_lock);






  kref_put(&obj->refcount, drm_gem_object_ref_bug);
 } else
  spin_unlock(&dev->object_name_lock);

}
