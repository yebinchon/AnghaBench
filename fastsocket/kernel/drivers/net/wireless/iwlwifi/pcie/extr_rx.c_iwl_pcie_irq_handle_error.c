
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans_pcie {int wait_command_queue; int status; } ;
struct iwl_trans {int op_mode; TYPE_1__* cfg; } ;
struct TYPE_2__ {scalar_t__ internal_wimax_coex; } ;


 int APMG_CLK_CTRL_REG ;
 int APMG_PS_CTRL_REG ;
 int APMG_PS_CTRL_VAL_RESET_REQ ;
 int APMS_CLK_VAL_MRB_FUNC_MODE ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int STATUS_FW_ERROR ;
 int STATUS_HCMD_ACTIVE ;
 int clear_bit (int ,int *) ;
 int iwl_op_mode_nic_error (int ) ;
 int iwl_op_mode_wimax_active (int ) ;
 int iwl_pcie_dump_csr (struct iwl_trans*) ;
 int iwl_pcie_dump_fh (struct iwl_trans*,int *) ;
 int iwl_read_prph (struct iwl_trans*,int ) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int set_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void iwl_pcie_irq_handle_error(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);


 if (trans->cfg->internal_wimax_coex &&
     (!(iwl_read_prph(trans, APMG_CLK_CTRL_REG) &
        APMS_CLK_VAL_MRB_FUNC_MODE) ||
      (iwl_read_prph(trans, APMG_PS_CTRL_REG) &
       APMG_PS_CTRL_VAL_RESET_REQ))) {
  clear_bit(STATUS_HCMD_ACTIVE, &trans_pcie->status);
  iwl_op_mode_wimax_active(trans->op_mode);
  wake_up(&trans_pcie->wait_command_queue);
  return;
 }

 iwl_pcie_dump_csr(trans);
 iwl_pcie_dump_fh(trans, ((void*)0));

 set_bit(STATUS_FW_ERROR, &trans_pcie->status);
 clear_bit(STATUS_HCMD_ACTIVE, &trans_pcie->status);
 wake_up(&trans_pcie->wait_command_queue);

 local_bh_disable();
 iwl_op_mode_nic_error(trans->op_mode);
 local_bh_enable();
}
