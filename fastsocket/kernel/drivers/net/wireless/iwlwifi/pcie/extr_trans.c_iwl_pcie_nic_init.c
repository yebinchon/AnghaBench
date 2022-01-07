
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_trans_pcie {int irq_lock; } ;
struct iwl_trans {TYPE_2__* cfg; int op_mode; } ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {scalar_t__ shadow_reg_enable; } ;


 int CSR_INT_COALESCING ;
 int CSR_MAC_SHADOW_REG_CTRL ;
 int ENOMEM ;
 int IWL_DEBUG_INFO (struct iwl_trans*,char*) ;
 int IWL_HOST_INT_CALIB_TIMEOUT_DEF ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int iwl_op_mode_nic_config (int ) ;
 int iwl_pcie_apm_init (struct iwl_trans*) ;
 int iwl_pcie_rx_init (struct iwl_trans*) ;
 int iwl_pcie_set_pwr (struct iwl_trans*,int) ;
 scalar_t__ iwl_pcie_tx_init (struct iwl_trans*) ;
 int iwl_set_bit (struct iwl_trans*,int ,int) ;
 int iwl_write8 (struct iwl_trans*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int iwl_pcie_nic_init(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 unsigned long flags;


 spin_lock_irqsave(&trans_pcie->irq_lock, flags);
 iwl_pcie_apm_init(trans);


 iwl_write8(trans, CSR_INT_COALESCING, IWL_HOST_INT_CALIB_TIMEOUT_DEF);

 spin_unlock_irqrestore(&trans_pcie->irq_lock, flags);

 iwl_pcie_set_pwr(trans, 0);

 iwl_op_mode_nic_config(trans->op_mode);


 iwl_pcie_rx_init(trans);


 if (iwl_pcie_tx_init(trans))
  return -ENOMEM;

 if (trans->cfg->base_params->shadow_reg_enable) {

  iwl_set_bit(trans, CSR_MAC_SHADOW_REG_CTRL, 0x800FFFFF);
  IWL_DEBUG_INFO(trans, "Enabling shadow registers in device\n");
 }

 return 0;
}
