
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ suspended; } ;
struct drm_i915_private {int enable_hotplug_processing; int modeset_restore_lock; int modeset_restore; int console_resume_work; TYPE_1__ mm; } ;
struct drm_device {int struct_mutex; struct drm_i915_private* dev_private; } ;


 int DRIVER_MODESET ;
 int MODESET_DONE ;
 scalar_t__ console_trylock () ;
 int console_unlock () ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int drm_irq_install (struct drm_device*) ;
 int i915_gem_init_hw (struct drm_device*) ;
 int i915_restore_state (struct drm_device*) ;
 int intel_fbdev_set_suspend (struct drm_device*,int ) ;
 int intel_hpd_init (struct drm_device*) ;
 int intel_init_pch_refclk (struct drm_device*) ;
 int intel_modeset_init_hw (struct drm_device*) ;
 int intel_modeset_setup_hw_state (struct drm_device*,int) ;
 int intel_opregion_init (struct drm_device*) ;
 int intel_opregion_setup (struct drm_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static int __i915_drm_thaw(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 int error = 0;

 i915_restore_state(dev);
 intel_opregion_setup(dev);


 if (drm_core_check_feature(dev, DRIVER_MODESET)) {
  intel_init_pch_refclk(dev);

  mutex_lock(&dev->struct_mutex);
  dev_priv->mm.suspended = 0;

  error = i915_gem_init_hw(dev);
  mutex_unlock(&dev->struct_mutex);


  drm_irq_install(dev);

  intel_modeset_init_hw(dev);
  intel_modeset_setup_hw_state(dev, 0);







  intel_hpd_init(dev);
  dev_priv->enable_hotplug_processing = 1;
 }

 intel_opregion_init(dev);






 if (console_trylock()) {
  intel_fbdev_set_suspend(dev, 0);
  console_unlock();
 } else {
  schedule_work(&dev_priv->console_resume_work);
 }

 mutex_lock(&dev_priv->modeset_restore_lock);
 dev_priv->modeset_restore = MODESET_DONE;
 mutex_unlock(&dev_priv->modeset_restore_lock);
 return error;
}
