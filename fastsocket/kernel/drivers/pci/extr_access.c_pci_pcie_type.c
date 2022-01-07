
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev_rh1 {int pcie_flags_reg; } ;
struct pci_dev {scalar_t__ rh_reserved1; } ;


 int PCI_EXP_FLAGS_TYPE ;

int pci_pcie_type(const struct pci_dev *dev)
{
 return (((struct pci_dev_rh1 *)dev->rh_reserved1)->pcie_flags_reg &
  PCI_EXP_FLAGS_TYPE) >> 4;
}
