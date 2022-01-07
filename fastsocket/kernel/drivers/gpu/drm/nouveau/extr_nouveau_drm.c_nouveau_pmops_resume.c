
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_device {scalar_t__ switch_power_state; } ;
struct device {int dummy; } ;


 scalar_t__ DRM_SWITCH_POWER_OFF ;
 int PCI_D0 ;
 int nouveau_do_resume (struct drm_device*) ;
 int pci_enable_device (struct pci_dev*) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 struct pci_dev* to_pci_dev (struct device*) ;

int nouveau_pmops_resume(struct device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct drm_device *drm_dev = pci_get_drvdata(pdev);
 int ret;

 if (drm_dev->switch_power_state == DRM_SWITCH_POWER_OFF)
  return 0;

 pci_set_power_state(pdev, PCI_D0);
 pci_restore_state(pdev);
 ret = pci_enable_device(pdev);
 if (ret)
  return ret;
 pci_set_master(pdev);

 return nouveau_do_resume(drm_dev);
}
