
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int id; int write_ptr; } ;
struct iwl_txq {scalar_t__ need_update; TYPE_3__ q; } ;
struct iwl_trans_pcie {int status; } ;
struct iwl_trans {TYPE_2__* cfg; } ;
struct TYPE_5__ {TYPE_1__* base_params; } ;
struct TYPE_4__ {scalar_t__ shadow_reg_enable; } ;


 int CSR_GP_CNTRL ;
 int CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ ;
 int CSR_UCODE_DRV_GP1 ;
 int CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP ;
 int HBUS_TARG_WRPTR ;
 int IWL_DEBUG_INFO (struct iwl_trans*,char*,int,int) ;
 int IWL_DEBUG_TX (struct iwl_trans*,char*,int,int) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int STATUS_TPOWER_PMI ;
 int iwl_read32 (struct iwl_trans*,int ) ;
 int iwl_set_bit (struct iwl_trans*,int ,int ) ;
 int iwl_write32 (struct iwl_trans*,int ,int) ;
 int iwl_write_direct32 (struct iwl_trans*,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

void iwl_pcie_txq_inc_wr_ptr(struct iwl_trans *trans, struct iwl_txq *txq)
{
 u32 reg = 0;
 int txq_id = txq->q.id;

 if (txq->need_update == 0)
  return;

 if (trans->cfg->base_params->shadow_reg_enable) {

  iwl_write32(trans, HBUS_TARG_WRPTR,
       txq->q.write_ptr | (txq_id << 8));
 } else {
  struct iwl_trans_pcie *trans_pcie =
   IWL_TRANS_GET_PCIE_TRANS(trans);

  if (test_bit(STATUS_TPOWER_PMI, &trans_pcie->status)) {



   reg = iwl_read32(trans, CSR_UCODE_DRV_GP1);

   if (reg & CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP) {
    IWL_DEBUG_INFO(trans,
     "Tx queue %d requesting wakeup,"
     " GP1 = 0x%x\n", txq_id, reg);
    iwl_set_bit(trans, CSR_GP_CNTRL,
     CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ);
    return;
   }

   IWL_DEBUG_TX(trans, "Q:%d WR: 0x%x\n", txq_id,
         txq->q.write_ptr);

   iwl_write_direct32(trans, HBUS_TARG_WRPTR,
         txq->q.write_ptr | (txq_id << 8));






  } else
   iwl_write32(trans, HBUS_TARG_WRPTR,
        txq->q.write_ptr | (txq_id << 8));
 }
 txq->need_update = 0;
}
