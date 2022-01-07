
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {struct pci_bus* subordinate; } ;
struct pci_bus {int dummy; } ;


 int pci_destroy_dev (struct pci_dev*) ;
 int pci_remove_behind_bridge (struct pci_dev*) ;
 int pci_remove_bus (struct pci_bus*) ;
 int pci_stop_bus_device (struct pci_dev*) ;

void pci_remove_bus_device(struct pci_dev *dev)
{
 pci_stop_bus_device(dev);
 if (dev->subordinate) {
  struct pci_bus *b = dev->subordinate;

  pci_remove_behind_bridge(dev);
  pci_remove_bus(b);
  dev->subordinate = ((void*)0);
 }

 pci_destroy_dev(dev);
}
