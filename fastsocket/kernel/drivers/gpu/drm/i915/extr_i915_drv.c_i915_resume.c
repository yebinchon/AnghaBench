
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int header; } ;
struct drm_i915_private {TYPE_1__ opregion; } ;
struct drm_device {scalar_t__ switch_power_state; int struct_mutex; int pdev; struct drm_i915_private* dev_private; } ;


 int DRIVER_MODESET ;
 scalar_t__ DRM_SWITCH_POWER_OFF ;
 int EIO ;
 int __i915_drm_thaw (struct drm_device*) ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int drm_kms_helper_poll_enable (struct drm_device*) ;
 int i915_gem_restore_gtt_mappings (struct drm_device*) ;
 int intel_gt_reset (struct drm_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ pci_enable_device (int ) ;
 int pci_set_master (int ) ;

int i915_resume(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 int ret;

 if (dev->switch_power_state == DRM_SWITCH_POWER_OFF)
  return 0;

 if (pci_enable_device(dev->pdev))
  return -EIO;

 pci_set_master(dev->pdev);

 intel_gt_reset(dev);





 if (drm_core_check_feature(dev, DRIVER_MODESET) &&
     !dev_priv->opregion.header) {
  mutex_lock(&dev->struct_mutex);
  i915_gem_restore_gtt_mappings(dev);
  mutex_unlock(&dev->struct_mutex);
 }

 ret = __i915_drm_thaw(dev);
 if (ret)
  return ret;

 drm_kms_helper_poll_enable(dev);
 return 0;
}
