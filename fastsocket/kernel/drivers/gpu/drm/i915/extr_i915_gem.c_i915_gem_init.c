
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int allow_batchbuffer; } ;
struct drm_i915_private {TYPE_1__ dri1; } ;
struct drm_device {int struct_mutex; struct drm_i915_private* dev_private; } ;


 int DRIVER_MODESET ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int i915_gem_cleanup_aliasing_ppgtt (struct drm_device*) ;
 int i915_gem_init_global_gtt (struct drm_device*) ;
 int i915_gem_init_hw (struct drm_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int i915_gem_init(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 int ret;

 mutex_lock(&dev->struct_mutex);
 i915_gem_init_global_gtt(dev);
 ret = i915_gem_init_hw(dev);
 mutex_unlock(&dev->struct_mutex);
 if (ret) {
  i915_gem_cleanup_aliasing_ppgtt(dev);
  return ret;
 }


 if (!drm_core_check_feature(dev, DRIVER_MODESET))
  dev_priv->dri1.allow_batchbuffer = 1;
 return 0;
}
