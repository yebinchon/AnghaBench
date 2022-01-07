
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_EXP_DEVCTL2 ;
 int PCI_EXP_OBFF_WAKE_EN ;
 int pcie_capability_clear_word (struct pci_dev*,int ,int ) ;

void pci_disable_obff(struct pci_dev *dev)
{
 pcie_capability_clear_word(dev, PCI_EXP_DEVCTL2, PCI_EXP_OBFF_WAKE_EN);
}
