
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dma; } ;
struct iwl_trans_pcie {int cmd_queue; int * txq; int irq_lock; TYPE_1__ kw; } ;
struct iwl_trans {TYPE_3__* cfg; } ;
struct TYPE_6__ {TYPE_2__* base_params; } ;
struct TYPE_5__ {int num_of_queues; } ;


 int FH_KW_MEM_ADDR_REG ;
 int IWL_ERR (struct iwl_trans*,char*,int) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int SCD_TXFACT ;
 int TFD_CMD_SLOTS ;
 int TFD_TX_CMD_SLOTS ;
 int iwl_pcie_tx_alloc (struct iwl_trans*) ;
 int iwl_pcie_tx_free (struct iwl_trans*) ;
 int iwl_pcie_txq_init (struct iwl_trans*,int *,int,int) ;
 int iwl_write_direct32 (struct iwl_trans*,int ,int) ;
 int iwl_write_prph (struct iwl_trans*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int iwl_pcie_tx_init(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 int ret;
 int txq_id, slots_num;
 unsigned long flags;
 bool alloc = 0;

 if (!trans_pcie->txq) {
  ret = iwl_pcie_tx_alloc(trans);
  if (ret)
   goto error;
  alloc = 1;
 }

 spin_lock_irqsave(&trans_pcie->irq_lock, flags);


 iwl_write_prph(trans, SCD_TXFACT, 0);


 iwl_write_direct32(trans, FH_KW_MEM_ADDR_REG,
      trans_pcie->kw.dma >> 4);

 spin_unlock_irqrestore(&trans_pcie->irq_lock, flags);


 for (txq_id = 0; txq_id < trans->cfg->base_params->num_of_queues;
      txq_id++) {
  slots_num = (txq_id == trans_pcie->cmd_queue) ?
     TFD_CMD_SLOTS : TFD_TX_CMD_SLOTS;
  ret = iwl_pcie_txq_init(trans, &trans_pcie->txq[txq_id],
      slots_num, txq_id);
  if (ret) {
   IWL_ERR(trans, "Tx %d queue init failed\n", txq_id);
   goto error;
  }
 }

 return 0;
error:

 if (alloc)
  iwl_pcie_tx_free(trans);
 return ret;
}
