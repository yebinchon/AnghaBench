
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_device {int struct_mutex; TYPE_3__* dev_private; } ;
struct TYPE_5__ {int suspended; int retire_work; } ;
struct TYPE_4__ {int hangcheck_timer; } ;
struct TYPE_6__ {TYPE_2__ mm; TYPE_1__ gpu_error; } ;
typedef TYPE_3__ drm_i915_private_t ;


 int DRIVER_MODESET ;
 int cancel_delayed_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int i915_gem_cleanup_ringbuffer (struct drm_device*) ;
 int i915_gem_evict_everything (struct drm_device*) ;
 int i915_gem_reset_fences (struct drm_device*) ;
 int i915_gem_retire_requests (struct drm_device*) ;
 int i915_gpu_idle (struct drm_device*) ;
 int i915_kernel_lost_context (struct drm_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int
i915_gem_idle(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 int ret;

 mutex_lock(&dev->struct_mutex);

 if (dev_priv->mm.suspended) {
  mutex_unlock(&dev->struct_mutex);
  return 0;
 }

 ret = i915_gpu_idle(dev);
 if (ret) {
  mutex_unlock(&dev->struct_mutex);
  return ret;
 }
 i915_gem_retire_requests(dev);


 if (!drm_core_check_feature(dev, DRIVER_MODESET))
  i915_gem_evict_everything(dev);

 i915_gem_reset_fences(dev);





 dev_priv->mm.suspended = 1;
 del_timer_sync(&dev_priv->gpu_error.hangcheck_timer);

 i915_kernel_lost_context(dev);
 i915_gem_cleanup_ringbuffer(dev);

 mutex_unlock(&dev->struct_mutex);


 cancel_delayed_work_sync(&dev_priv->mm.retire_work);

 return 0;
}
