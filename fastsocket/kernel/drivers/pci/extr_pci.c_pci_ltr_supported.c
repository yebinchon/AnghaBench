
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int PCI_EXP_DEVCAP2 ;
 int PCI_EXP_DEVCAP2_LTR ;
 int pcie_capability_read_dword (struct pci_dev*,int ,int*) ;

bool pci_ltr_supported(struct pci_dev *dev)
{
 u32 cap;

 pcie_capability_read_dword(dev, PCI_EXP_DEVCAP2, &cap);

 return cap & PCI_EXP_DEVCAP2_LTR;
}
