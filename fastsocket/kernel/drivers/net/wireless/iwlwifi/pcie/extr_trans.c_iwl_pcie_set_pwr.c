
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dev; } ;


 int APMG_PS_CTRL_MSK_PWR_SRC ;
 int APMG_PS_CTRL_REG ;
 int APMG_PS_CTRL_VAL_PWR_SRC_VAUX ;
 int APMG_PS_CTRL_VAL_PWR_SRC_VMAIN ;
 int PCI_D3cold ;
 int iwl_set_bits_mask_prph (struct iwl_trans*,int ,int ,int ) ;
 scalar_t__ pci_pme_capable (int ,int ) ;
 int to_pci_dev (int ) ;

__attribute__((used)) static void iwl_pcie_set_pwr(struct iwl_trans *trans, bool vaux)
{
 if (vaux && pci_pme_capable(to_pci_dev(trans->dev), PCI_D3cold))
  iwl_set_bits_mask_prph(trans, APMG_PS_CTRL_REG,
           APMG_PS_CTRL_VAL_PWR_SRC_VAUX,
           ~APMG_PS_CTRL_MSK_PWR_SRC);
 else
  iwl_set_bits_mask_prph(trans, APMG_PS_CTRL_REG,
           APMG_PS_CTRL_VAL_PWR_SRC_VMAIN,
           ~APMG_PS_CTRL_MSK_PWR_SRC);
}
