
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {scalar_t__ open_count; int primary; int control; } ;


 int DRIVER_MODESET ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int drm_device_set_unplugged (struct drm_device*) ;
 int drm_global_mutex ;
 int drm_put_dev (struct drm_device*) ;
 int drm_unplug_minor (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void drm_unplug_dev(struct drm_device *dev)
{

 if (drm_core_check_feature(dev, DRIVER_MODESET))
  drm_unplug_minor(dev->control);
 drm_unplug_minor(dev->primary);

 mutex_lock(&drm_global_mutex);

 drm_device_set_unplugged(dev);

 if (dev->open_count == 0) {
  drm_put_dev(dev);
 }
 mutex_unlock(&drm_global_mutex);
}
