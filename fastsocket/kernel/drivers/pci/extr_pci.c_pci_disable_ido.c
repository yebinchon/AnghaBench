
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_EXP_DEVCTL2 ;
 int PCI_EXP_IDO_CMP_EN ;
 unsigned long PCI_EXP_IDO_COMPLETION ;
 unsigned long PCI_EXP_IDO_REQUEST ;
 int PCI_EXP_IDO_REQ_EN ;
 int pcie_capability_clear_word (struct pci_dev*,int ,int) ;

void pci_disable_ido(struct pci_dev *dev, unsigned long type)
{
 u16 ctrl = 0;

 if (type & PCI_EXP_IDO_REQUEST)
  ctrl |= PCI_EXP_IDO_REQ_EN;
 if (type & PCI_EXP_IDO_COMPLETION)
  ctrl |= PCI_EXP_IDO_CMP_EN;
 if (ctrl)
  pcie_capability_clear_word(dev, PCI_EXP_DEVCTL2, ctrl);
}
