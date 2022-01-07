
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_driver {int (* remove ) (struct pci_dev*) ;} ;
struct pci_dev {scalar_t__ current_state; struct pci_driver* driver; } ;
struct device {int dummy; } ;


 scalar_t__ PCI_D0 ;
 scalar_t__ PCI_UNKNOWN ;
 int pci_dev_put (struct pci_dev*) ;
 int stub1 (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int pci_device_remove(struct device * dev)
{
 struct pci_dev * pci_dev = to_pci_dev(dev);
 struct pci_driver * drv = pci_dev->driver;

 if (drv) {
  if (drv->remove)
   drv->remove(pci_dev);
  pci_dev->driver = ((void*)0);
 }





 if (pci_dev->current_state == PCI_D0)
  pci_dev->current_state = PCI_UNKNOWN;
 pci_dev_put(pci_dev);
 return 0;
}
