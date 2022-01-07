
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ subordinate; } ;


 int pci_stop_bus_devices (scalar_t__) ;
 int pci_stop_dev (struct pci_dev*) ;

void pci_stop_bus_device(struct pci_dev *dev)
{
 if (dev->subordinate)
  pci_stop_bus_devices(dev->subordinate);

 pci_stop_dev(dev);
}
