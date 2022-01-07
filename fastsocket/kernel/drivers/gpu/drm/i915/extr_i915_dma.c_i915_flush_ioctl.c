
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int struct_mutex; } ;


 int DRIVER_MODESET ;
 int ENODEV ;
 int RING_LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int i915_quiescent (struct drm_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int i915_flush_ioctl(struct drm_device *dev, void *data,
       struct drm_file *file_priv)
{
 int ret;

 if (drm_core_check_feature(dev, DRIVER_MODESET))
  return -ENODEV;

 RING_LOCK_TEST_WITH_RETURN(dev, file_priv);

 mutex_lock(&dev->struct_mutex);
 ret = i915_quiescent(dev);
 mutex_unlock(&dev->struct_mutex);

 return ret;
}
