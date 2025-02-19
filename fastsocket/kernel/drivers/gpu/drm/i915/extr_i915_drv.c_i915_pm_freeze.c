
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_device {int dev_private; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int dev_err (struct device*,char*) ;
 int i915_drm_freeze (struct drm_device*) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int i915_pm_freeze(struct device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct drm_device *drm_dev = pci_get_drvdata(pdev);

 if (!drm_dev || !drm_dev->dev_private) {
  dev_err(dev, "DRM not initialized, aborting suspend.\n");
  return -ENODEV;
 }

 return i915_drm_freeze(drm_dev);
}
