
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 scalar_t__ PCI_ACS_CAP ;
 int PCI_ACS_CR ;
 scalar_t__ PCI_ACS_CTRL ;
 int PCI_ACS_RR ;
 int PCI_ACS_SV ;
 int PCI_ACS_UF ;
 int PCI_EXT_CAP_ID_ACS ;
 int pci_acs_enable ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int*) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int) ;

void pci_enable_acs(struct pci_dev *dev)
{
 int pos;
 u16 cap;
 u16 ctrl;

 if (!pci_acs_enable)
  return;

 pos = pci_find_ext_capability(dev, PCI_EXT_CAP_ID_ACS);
 if (!pos)
  return;

 pci_read_config_word(dev, pos + PCI_ACS_CAP, &cap);
 pci_read_config_word(dev, pos + PCI_ACS_CTRL, &ctrl);


 ctrl |= (cap & PCI_ACS_SV);


 ctrl |= (cap & PCI_ACS_RR);


 ctrl |= (cap & PCI_ACS_CR);


 ctrl |= (cap & PCI_ACS_UF);

 pci_write_config_word(dev, pos + PCI_ACS_CTRL, ctrl);
}
