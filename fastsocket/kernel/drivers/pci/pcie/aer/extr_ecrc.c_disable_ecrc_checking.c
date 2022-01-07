
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int ENODEV ;
 scalar_t__ PCI_ERR_CAP ;
 int PCI_ERR_CAP_ECRC_CHKE ;
 int PCI_ERR_CAP_ECRC_GENE ;
 int PCI_EXT_CAP_ID_ERR ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_is_pcie (struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int) ;

__attribute__((used)) static int disable_ecrc_checking(struct pci_dev *dev)
{
 int pos;
 u32 reg32;

 if (!pci_is_pcie(dev))
  return -ENODEV;

 pos = pci_find_ext_capability(dev, PCI_EXT_CAP_ID_ERR);
 if (!pos)
  return -ENODEV;

 pci_read_config_dword(dev, pos + PCI_ERR_CAP, &reg32);
 reg32 &= ~(PCI_ERR_CAP_ECRC_GENE | PCI_ERR_CAP_ECRC_CHKE);
 pci_write_config_dword(dev, pos + PCI_ERR_CAP, reg32);

 return 0;
}
