
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int EIO ;
 int PCI_EXP_AER_FLAGS ;
 int PCI_EXP_DEVCTL ;
 int PCI_EXT_CAP_ID_ERR ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 scalar_t__ pcie_aer_get_firmware_first (struct pci_dev*) ;
 int pcie_capability_set_word (struct pci_dev*,int ,int ) ;

int pci_enable_pcie_error_reporting(struct pci_dev *dev)
{
 if (pcie_aer_get_firmware_first(dev))
  return -EIO;

 if (!pci_find_ext_capability(dev, PCI_EXT_CAP_ID_ERR))
  return -EIO;

 return pcie_capability_set_word(dev, PCI_EXP_DEVCTL, PCI_EXP_AER_FLAGS);
}
