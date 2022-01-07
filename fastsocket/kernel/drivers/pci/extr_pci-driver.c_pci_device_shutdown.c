
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_driver {int (* shutdown ) (struct pci_dev*) ;} ;
struct pci_dev {struct pci_driver* driver; } ;
struct device {int dummy; } ;


 int pci_msi_shutdown (struct pci_dev*) ;
 int pci_msix_shutdown (struct pci_dev*) ;
 int stub1 (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static void pci_device_shutdown(struct device *dev)
{
 struct pci_dev *pci_dev = to_pci_dev(dev);
 struct pci_driver *drv = pci_dev->driver;

 if (drv && drv->shutdown)
  drv->shutdown(pci_dev);
 pci_msi_shutdown(pci_dev);
 pci_msix_shutdown(pci_dev);
}
