
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iwl_trans_pcie {int pci_dev; } ;
struct iwl_trans {int pm_support; int dev; } ;


 int CSR_GIO_REG ;
 int CSR_GIO_REG_VAL_L0S_ENABLED ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int PCI_EXP_LNKCTL ;
 int PCI_EXP_LNKCTL_ASPM_L0S ;
 int PCI_EXP_LNKCTL_ASPM_L1 ;
 int dev_info (int ,char*) ;
 int iwl_clear_bit (struct iwl_trans*,int ,int ) ;
 int iwl_set_bit (struct iwl_trans*,int ,int ) ;
 int pcie_capability_read_word (int ,int ,int*) ;

__attribute__((used)) static void iwl_pcie_apm_config(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 u16 lctl;
 pcie_capability_read_word(trans_pcie->pci_dev, PCI_EXP_LNKCTL, &lctl);
 if (lctl & PCI_EXP_LNKCTL_ASPM_L1) {

  iwl_set_bit(trans, CSR_GIO_REG, CSR_GIO_REG_VAL_L0S_ENABLED);
  dev_info(trans->dev, "L1 Enabled; Disabling L0S\n");
 } else {

  iwl_clear_bit(trans, CSR_GIO_REG, CSR_GIO_REG_VAL_L0S_ENABLED);
  dev_info(trans->dev, "L1 Disabled; Enabling L0S\n");
 }
 trans->pm_support = !(lctl & PCI_EXP_LNKCTL_ASPM_L0S);
}
