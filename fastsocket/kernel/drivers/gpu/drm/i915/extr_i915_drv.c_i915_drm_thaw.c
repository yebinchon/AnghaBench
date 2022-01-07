
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int struct_mutex; } ;


 int DRIVER_MODESET ;
 int __i915_drm_thaw (struct drm_device*) ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int i915_gem_restore_gtt_mappings (struct drm_device*) ;
 int intel_gt_reset (struct drm_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int i915_drm_thaw(struct drm_device *dev)
{
 int error = 0;

 intel_gt_reset(dev);

 if (drm_core_check_feature(dev, DRIVER_MODESET)) {
  mutex_lock(&dev->struct_mutex);
  i915_gem_restore_gtt_mappings(dev);
  mutex_unlock(&dev->struct_mutex);
 }

 __i915_drm_thaw(dev);

 return error;
}
