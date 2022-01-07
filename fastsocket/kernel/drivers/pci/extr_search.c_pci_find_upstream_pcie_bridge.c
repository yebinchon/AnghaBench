
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_2__ {struct pci_dev* self; } ;


 scalar_t__ PCI_EXP_TYPE_PCI_BRIDGE ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ pci_is_pcie (struct pci_dev*) ;
 scalar_t__ pci_is_root_bus (TYPE_1__*) ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;

struct pci_dev *
pci_find_upstream_pcie_bridge(struct pci_dev *pdev)
{
 struct pci_dev *tmp = ((void*)0);

 if (pci_is_pcie(pdev))
  return ((void*)0);
 while (1) {
  if (pci_is_root_bus(pdev->bus))
   break;
  pdev = pdev->bus->self;

  if (!pci_is_pcie(pdev)) {
   tmp = pdev;
   continue;
  }

  if (pci_pcie_type(pdev) != PCI_EXP_TYPE_PCI_BRIDGE) {

   WARN_ON_ONCE(1);
   return ((void*)0);
  }
  return pdev;
 }

 return tmp;
}
