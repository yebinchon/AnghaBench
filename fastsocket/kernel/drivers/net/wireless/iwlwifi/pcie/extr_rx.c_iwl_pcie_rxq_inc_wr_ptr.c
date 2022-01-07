
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iwl_trans_pcie {int status; } ;
struct iwl_trans {TYPE_2__* cfg; } ;
struct iwl_rxq {scalar_t__ need_update; int write_actual; int write; int lock; } ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {scalar_t__ shadow_reg_enable; } ;


 int CSR_GP_CNTRL ;
 int CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ ;
 int CSR_UCODE_DRV_GP1 ;
 int CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP ;
 int FH_RSCSR_CHNL0_WPTR ;
 int IWL_DEBUG_INFO (struct iwl_trans*,char*,int) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int STATUS_TPOWER_PMI ;
 int iwl_read32 (struct iwl_trans*,int ) ;
 int iwl_set_bit (struct iwl_trans*,int ,int ) ;
 int iwl_write32 (struct iwl_trans*,int ,int) ;
 int iwl_write_direct32 (struct iwl_trans*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void iwl_pcie_rxq_inc_wr_ptr(struct iwl_trans *trans, struct iwl_rxq *q)
{
 unsigned long flags;
 u32 reg;

 spin_lock_irqsave(&q->lock, flags);

 if (q->need_update == 0)
  goto exit_unlock;

 if (trans->cfg->base_params->shadow_reg_enable) {


  q->write_actual = (q->write & ~0x7);
  iwl_write32(trans, FH_RSCSR_CHNL0_WPTR, q->write_actual);
 } else {
  struct iwl_trans_pcie *trans_pcie =
   IWL_TRANS_GET_PCIE_TRANS(trans);


  if (test_bit(STATUS_TPOWER_PMI, &trans_pcie->status)) {
   reg = iwl_read32(trans, CSR_UCODE_DRV_GP1);

   if (reg & CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP) {
    IWL_DEBUG_INFO(trans,
     "Rx queue requesting wakeup,"
     " GP1 = 0x%x\n", reg);
    iwl_set_bit(trans, CSR_GP_CNTRL,
     CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ);
    goto exit_unlock;
   }

   q->write_actual = (q->write & ~0x7);
   iwl_write_direct32(trans, FH_RSCSR_CHNL0_WPTR,
     q->write_actual);


  } else {

   q->write_actual = (q->write & ~0x7);
   iwl_write_direct32(trans, FH_RSCSR_CHNL0_WPTR,
    q->write_actual);
  }
 }
 q->need_update = 0;

 exit_unlock:
 spin_unlock_irqrestore(&q->lock, flags);
}
