
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int delayed_resume_work; } ;
struct drm_i915_private {int enable_hotplug_processing; TYPE_1__ rps; int modeset_restore_lock; int modeset_restore; } ;
struct drm_device {TYPE_2__* pdev; struct drm_i915_private* dev_private; } ;
struct TYPE_4__ {int dev; } ;


 int DRIVER_MODESET ;
 int MODESET_SUSPENDED ;
 int cancel_delayed_work_sync (int *) ;
 int console_lock () ;
 int console_unlock () ;
 int dev_err (int *,char*) ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int drm_irq_uninstall (struct drm_device*) ;
 int drm_kms_helper_poll_disable (struct drm_device*) ;
 int i915_gem_idle (struct drm_device*) ;
 int i915_save_state (struct drm_device*) ;
 int intel_fbdev_set_suspend (struct drm_device*,int) ;
 int intel_modeset_disable (struct drm_device*) ;
 int intel_opregion_fini (struct drm_device*) ;
 int intel_set_power_well (struct drm_device*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_save_state (TYPE_2__*) ;

__attribute__((used)) static int i915_drm_freeze(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;


 mutex_lock(&dev_priv->modeset_restore_lock);
 dev_priv->modeset_restore = MODESET_SUSPENDED;
 mutex_unlock(&dev_priv->modeset_restore_lock);

 intel_set_power_well(dev, 1);

 drm_kms_helper_poll_disable(dev);

 pci_save_state(dev->pdev);


 if (drm_core_check_feature(dev, DRIVER_MODESET)) {
  int error = i915_gem_idle(dev);
  if (error) {
   dev_err(&dev->pdev->dev,
    "GEM idle failed, resume might fail\n");
   return error;
  }

  cancel_delayed_work_sync(&dev_priv->rps.delayed_resume_work);

  intel_modeset_disable(dev);

  drm_irq_uninstall(dev);
  dev_priv->enable_hotplug_processing = 0;
 }

 i915_save_state(dev);

 intel_opregion_fini(dev);

 console_lock();
 intel_fbdev_set_suspend(dev, 1);
 console_unlock();

 return 0;
}
