
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_local_map {int dummy; } ;
struct drm_device {int struct_mutex; } ;


 int drm_rmmap_locked (struct drm_device*,struct drm_local_map*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int drm_rmmap(struct drm_device *dev, struct drm_local_map *map)
{
 int ret;

 mutex_lock(&dev->struct_mutex);
 ret = drm_rmmap_locked(dev, map);
 mutex_unlock(&dev->struct_mutex);

 return ret;
}
