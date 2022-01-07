
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {scalar_t__ switch_power_state; int pdev; int dev_private; } ;
struct TYPE_3__ {scalar_t__ event; } ;
typedef TYPE_1__ pm_message_t ;


 int DRM_ERROR (char*,...) ;
 scalar_t__ DRM_SWITCH_POWER_OFF ;
 int ENODEV ;
 int PCI_D3hot ;
 scalar_t__ PM_EVENT_PRETHAW ;
 scalar_t__ PM_EVENT_SUSPEND ;
 int i915_drm_freeze (struct drm_device*) ;
 int pci_disable_device (int ) ;
 int pci_set_power_state (int ,int ) ;

int i915_suspend(struct drm_device *dev, pm_message_t state)
{
 int error;

 if (!dev || !dev->dev_private) {
  DRM_ERROR("dev: %p\n", dev);
  DRM_ERROR("DRM not initialized, aborting suspend.\n");
  return -ENODEV;
 }

 if (state.event == PM_EVENT_PRETHAW)
  return 0;


 if (dev->switch_power_state == DRM_SWITCH_POWER_OFF)
  return 0;

 error = i915_drm_freeze(dev);
 if (error)
  return error;

 if (state.event == PM_EVENT_SUSPEND) {

  pci_disable_device(dev->pdev);
  pci_set_power_state(dev->pdev, PCI_D3hot);
 }

 return 0;
}
