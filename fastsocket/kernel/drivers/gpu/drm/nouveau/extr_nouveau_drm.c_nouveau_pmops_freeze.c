
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 int nouveau_do_suspend (struct drm_device*) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int nouveau_pmops_freeze(struct device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct drm_device *drm_dev = pci_get_drvdata(pdev);

 return nouveau_do_suspend(drm_dev);
}
