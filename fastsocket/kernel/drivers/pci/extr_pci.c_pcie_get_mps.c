
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL_PAYLOAD ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;

int pcie_get_mps(struct pci_dev *dev)
{
 u16 ctl;

 pcie_capability_read_word(dev, PCI_EXP_DEVCTL, &ctl);

 return 128 << ((ctl & PCI_EXP_DEVCTL_PAYLOAD) >> 5);
}
