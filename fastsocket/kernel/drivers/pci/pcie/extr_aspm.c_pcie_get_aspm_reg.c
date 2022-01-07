
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct aspm_register_info {int support; int latency_encoding_l0s; int latency_encoding_l1; int enabled; } ;


 int PCI_EXP_LNKCAP ;
 int PCI_EXP_LNKCAP_ASPMS ;
 int PCI_EXP_LNKCAP_L0SEL ;
 int PCI_EXP_LNKCAP_L1EL ;
 int PCI_EXP_LNKCTL ;
 int PCI_EXP_LNKCTL_ASPMC ;
 int pcie_capability_read_dword (struct pci_dev*,int ,int*) ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;

__attribute__((used)) static void pcie_get_aspm_reg(struct pci_dev *pdev,
         struct aspm_register_info *info)
{
 u16 reg16;
 u32 reg32;

 pcie_capability_read_dword(pdev, PCI_EXP_LNKCAP, &reg32);
 info->support = (reg32 & PCI_EXP_LNKCAP_ASPMS) >> 10;
 info->latency_encoding_l0s = (reg32 & PCI_EXP_LNKCAP_L0SEL) >> 12;
 info->latency_encoding_l1 = (reg32 & PCI_EXP_LNKCAP_L1EL) >> 15;
 pcie_capability_read_word(pdev, PCI_EXP_LNKCTL, &reg16);
 info->enabled = reg16 & PCI_EXP_LNKCTL_ASPMC;
}
