
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct iwlagn_scd_bc_tbl {int dummy; } ;
struct iwl_txq {int dummy; } ;
struct iwl_trans_pcie {int cmd_queue; int * txq; int kw; int scd_bc_tbls; } ;
struct iwl_trans {TYPE_2__* cfg; } ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {int num_of_queues; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IWL_ERR (struct iwl_trans*,char*,...) ;
 int IWL_KW_SIZE ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int TFD_CMD_SLOTS ;
 int TFD_TX_CMD_SLOTS ;
 scalar_t__ WARN_ON (int *) ;
 int iwl_pcie_alloc_dma_ptr (struct iwl_trans*,int *,int) ;
 int iwl_pcie_tx_free (struct iwl_trans*) ;
 int iwl_pcie_txq_alloc (struct iwl_trans*,int *,int,int) ;
 int * kcalloc (int,int,int ) ;

__attribute__((used)) static int iwl_pcie_tx_alloc(struct iwl_trans *trans)
{
 int ret;
 int txq_id, slots_num;
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 u16 scd_bc_tbls_size = trans->cfg->base_params->num_of_queues *
   sizeof(struct iwlagn_scd_bc_tbl);



 if (WARN_ON(trans_pcie->txq)) {
  ret = -EINVAL;
  goto error;
 }

 ret = iwl_pcie_alloc_dma_ptr(trans, &trans_pcie->scd_bc_tbls,
       scd_bc_tbls_size);
 if (ret) {
  IWL_ERR(trans, "Scheduler BC Table allocation failed\n");
  goto error;
 }


 ret = iwl_pcie_alloc_dma_ptr(trans, &trans_pcie->kw, IWL_KW_SIZE);
 if (ret) {
  IWL_ERR(trans, "Keep Warm allocation failed\n");
  goto error;
 }

 trans_pcie->txq = kcalloc(trans->cfg->base_params->num_of_queues,
      sizeof(struct iwl_txq), GFP_KERNEL);
 if (!trans_pcie->txq) {
  IWL_ERR(trans, "Not enough memory for txq\n");
  ret = ENOMEM;
  goto error;
 }


 for (txq_id = 0; txq_id < trans->cfg->base_params->num_of_queues;
      txq_id++) {
  slots_num = (txq_id == trans_pcie->cmd_queue) ?
     TFD_CMD_SLOTS : TFD_TX_CMD_SLOTS;
  ret = iwl_pcie_txq_alloc(trans, &trans_pcie->txq[txq_id],
       slots_num, txq_id);
  if (ret) {
   IWL_ERR(trans, "Tx %d queue alloc failed\n", txq_id);
   goto error;
  }
 }

 return 0;

error:
 iwl_pcie_tx_free(trans);

 return ret;
}
