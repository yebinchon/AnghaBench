
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_2__ {struct pci_dev* self; } ;


 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ;
 int pci_is_pcie (struct pci_dev*) ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;

__attribute__((used)) static struct pci_dev *pcie_find_root_port(struct pci_dev *dev)
{
 while (1) {
  if (!pci_is_pcie(dev))
   break;
  if (pci_pcie_type(dev) == PCI_EXP_TYPE_ROOT_PORT)
   return dev;
  if (!dev->bus->self)
   break;
  dev = dev->bus->self;
 }
 return ((void*)0);
}
