
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_device {scalar_t__ switch_power_state; int dev_private; } ;
struct device {int dummy; } ;


 scalar_t__ DRM_SWITCH_POWER_OFF ;
 int ENODEV ;
 int PCI_D3hot ;
 int dev_err (struct device*,char*) ;
 int i915_drm_freeze (struct drm_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int i915_pm_suspend(struct device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct drm_device *drm_dev = pci_get_drvdata(pdev);
 int error;

 if (!drm_dev || !drm_dev->dev_private) {
  dev_err(dev, "DRM not initialized, aborting suspend.\n");
  return -ENODEV;
 }

 if (drm_dev->switch_power_state == DRM_SWITCH_POWER_OFF)
  return 0;

 error = i915_drm_freeze(drm_dev);
 if (error)
  return error;

 pci_disable_device(pdev);
 pci_set_power_state(pdev, PCI_D3hot);

 return 0;
}
