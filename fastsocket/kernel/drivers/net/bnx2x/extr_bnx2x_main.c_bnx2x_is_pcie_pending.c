
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_EXP_DEVSTA ;
 int PCI_EXP_DEVSTA_TRPND ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;

u8 bnx2x_is_pcie_pending(struct pci_dev *dev)
{
 u16 status;

 pcie_capability_read_word(dev, PCI_EXP_DEVSTA, &status);
 return status & PCI_EXP_DEVSTA_TRPND;
}
