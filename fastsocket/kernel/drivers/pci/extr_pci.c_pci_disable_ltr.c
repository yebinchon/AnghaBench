
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int devfn; } ;


 int PCI_EXP_DEVCTL2 ;
 int PCI_EXP_LTR_EN ;
 scalar_t__ PCI_FUNC (int ) ;
 int pci_ltr_supported (struct pci_dev*) ;
 int pcie_capability_clear_word (struct pci_dev*,int ,int ) ;

void pci_disable_ltr(struct pci_dev *dev)
{

 if (PCI_FUNC(dev->devfn) != 0)
  return;

 if (!pci_ltr_supported(dev))
  return;

 pcie_capability_clear_word(dev, PCI_EXP_DEVCTL2, PCI_EXP_LTR_EN);
}
