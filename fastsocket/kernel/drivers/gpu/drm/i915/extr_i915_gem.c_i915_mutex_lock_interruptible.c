
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int gpu_error; } ;
struct drm_device {int struct_mutex; struct drm_i915_private* dev_private; } ;


 int WARN_ON (int ) ;
 int i915_gem_wait_for_error (int *) ;
 int i915_verify_lists (struct drm_device*) ;
 int mutex_lock_interruptible (int *) ;

int i915_mutex_lock_interruptible(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 int ret;

 ret = i915_gem_wait_for_error(&dev_priv->gpu_error);
 if (ret)
  return ret;

 ret = mutex_lock_interruptible(&dev->struct_mutex);
 if (ret)
  return ret;

 WARN_ON(i915_verify_lists(dev));
 return 0;
}
