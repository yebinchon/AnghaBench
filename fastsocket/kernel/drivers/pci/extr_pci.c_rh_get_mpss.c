
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev_rh1 {int pcie_mpss; } ;
struct pci_dev {scalar_t__ rh_reserved1; } ;



u8 rh_get_mpss(struct pci_dev *dev)
{
 return ((struct pci_dev_rh1 *) dev->rh_reserved1)->pcie_mpss;
}
