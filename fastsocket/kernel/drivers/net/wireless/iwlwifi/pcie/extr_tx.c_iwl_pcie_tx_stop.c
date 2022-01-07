
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_trans_pcie {int txq; int irq_lock; } ;
struct iwl_trans {TYPE_2__* cfg; } ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {int num_of_queues; } ;


 int FH_TCSR_CHNL_NUM ;
 int FH_TCSR_CHNL_TX_CONFIG_REG (int) ;
 int FH_TSSR_TX_STATUS_REG ;
 int FH_TSSR_TX_STATUS_REG_MSK_CHNL_IDLE (int) ;
 int IWL_ERR (struct iwl_trans*,char*,int,int ) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int IWL_WARN (struct iwl_trans*,char*) ;
 int iwl_pcie_txq_set_sched (struct iwl_trans*,int ) ;
 int iwl_pcie_txq_unmap (struct iwl_trans*,int) ;
 int iwl_poll_direct_bit (struct iwl_trans*,int ,int ,int) ;
 int iwl_read_direct32 (struct iwl_trans*,int ) ;
 int iwl_write_direct32 (struct iwl_trans*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int iwl_pcie_tx_stop(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 int ch, txq_id, ret;
 unsigned long flags;


 spin_lock_irqsave(&trans_pcie->irq_lock, flags);

 iwl_pcie_txq_set_sched(trans, 0);


 for (ch = 0; ch < FH_TCSR_CHNL_NUM; ch++) {
  iwl_write_direct32(trans,
       FH_TCSR_CHNL_TX_CONFIG_REG(ch), 0x0);
  ret = iwl_poll_direct_bit(trans, FH_TSSR_TX_STATUS_REG,
   FH_TSSR_TX_STATUS_REG_MSK_CHNL_IDLE(ch), 1000);
  if (ret < 0)
   IWL_ERR(trans,
    "Failing on timeout while stopping DMA channel %d [0x%08x]\n",
    ch,
    iwl_read_direct32(trans,
        FH_TSSR_TX_STATUS_REG));
 }
 spin_unlock_irqrestore(&trans_pcie->irq_lock, flags);

 if (!trans_pcie->txq) {
  IWL_WARN(trans,
    "Stopping tx queues that aren't allocated...\n");
  return 0;
 }


 for (txq_id = 0; txq_id < trans->cfg->base_params->num_of_queues;
      txq_id++)
  iwl_pcie_txq_unmap(trans, txq_id);

 return 0;
}
