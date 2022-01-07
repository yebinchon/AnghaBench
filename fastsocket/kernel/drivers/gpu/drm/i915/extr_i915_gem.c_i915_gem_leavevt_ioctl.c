
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRIVER_MODESET ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int drm_irq_uninstall (struct drm_device*) ;
 int i915_gem_idle (struct drm_device*) ;

int
i915_gem_leavevt_ioctl(struct drm_device *dev, void *data,
         struct drm_file *file_priv)
{
 if (drm_core_check_feature(dev, DRIVER_MODESET))
  return 0;

 drm_irq_uninstall(dev);
 return i915_gem_idle(dev);
}
