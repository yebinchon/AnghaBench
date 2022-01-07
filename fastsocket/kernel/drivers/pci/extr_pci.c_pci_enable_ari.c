
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int ari_enabled; TYPE_1__* bus; scalar_t__ devfn; } ;
struct TYPE_2__ {struct pci_dev* self; } ;


 int PCI_EXP_DEVCAP2 ;
 int PCI_EXP_DEVCAP2_ARI ;
 int PCI_EXP_DEVCTL2 ;
 int PCI_EXP_DEVCTL2_ARI ;
 int PCI_EXT_CAP_ID_ARI ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_is_pcie (struct pci_dev*) ;
 scalar_t__ pcie_ari_disabled ;
 int pcie_capability_read_dword (struct pci_dev*,int ,int*) ;
 int pcie_capability_set_word (struct pci_dev*,int ,int ) ;

void pci_enable_ari(struct pci_dev *dev)
{
 u32 cap;
 struct pci_dev *bridge;

 if (pcie_ari_disabled || !pci_is_pcie(dev) || dev->devfn)
  return;

 if (!pci_find_ext_capability(dev, PCI_EXT_CAP_ID_ARI))
  return;

 bridge = dev->bus->self;
 if (!bridge)
  return;

 pcie_capability_read_dword(bridge, PCI_EXP_DEVCAP2, &cap);
 if (!(cap & PCI_EXP_DEVCAP2_ARI))
  return;

 pcie_capability_set_word(bridge, PCI_EXP_DEVCTL2, PCI_EXP_DEVCTL2_ARI);
 bridge->ari_enabled = 1;
}
