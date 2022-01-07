
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int DRIVER_MODESET ;
 int DRM_ERROR (char*,int) ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int i915_gem_idle (struct drm_device*) ;

void
i915_gem_lastclose(struct drm_device *dev)
{
 int ret;

 if (drm_core_check_feature(dev, DRIVER_MODESET))
  return;

 ret = i915_gem_idle(dev);
 if (ret)
  DRM_ERROR("failed to idle hardware: %d\n", ret);
}
