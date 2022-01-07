
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint64_t ;
struct drm_gem_object {scalar_t__ name; } ;
struct drm_gem_flink {void* name; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int object_name_lock; int object_name_idr; TYPE_1__* driver; } ;
struct TYPE_2__ {int driver_features; } ;


 int DRIVER_GEM ;
 int EAGAIN ;
 int ENODEV ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_device*,struct drm_file*,int ) ;
 int drm_gem_object_reference (struct drm_gem_object*) ;
 int drm_gem_object_unreference_unlocked (struct drm_gem_object*) ;
 int idr_get_new_above (int *,struct drm_gem_object*,int,scalar_t__*) ;
 scalar_t__ idr_pre_get (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int
drm_gem_flink_ioctl(struct drm_device *dev, void *data,
      struct drm_file *file_priv)
{
 struct drm_gem_flink *args = data;
 struct drm_gem_object *obj;
 int ret;

 if (!(dev->driver->driver_features & DRIVER_GEM))
  return -ENODEV;

 obj = drm_gem_object_lookup(dev, file_priv, args->handle);
 if (obj == ((void*)0))
  return -ENOENT;

again:
 if (idr_pre_get(&dev->object_name_idr, GFP_KERNEL) == 0) {
  ret = -ENOMEM;
  goto err;
 }

 spin_lock(&dev->object_name_lock);
 if (!obj->name) {
  ret = idr_get_new_above(&dev->object_name_idr, obj, 1,
     &obj->name);
  args->name = (uint64_t) obj->name;
  spin_unlock(&dev->object_name_lock);

  if (ret == -EAGAIN)
   goto again;
  else if (ret)
   goto err;


  drm_gem_object_reference(obj);
 } else {
  args->name = (uint64_t) obj->name;
  spin_unlock(&dev->object_name_lock);
  ret = 0;
 }

err:
 drm_gem_object_unreference_unlocked(obj);
 return ret;
}
