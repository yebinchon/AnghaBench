
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_trans_pcie {int scd_bc_tbls; int kw; int * txq; } ;
struct iwl_trans {TYPE_2__* cfg; } ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {int num_of_queues; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int iwl_pcie_free_dma_ptr (struct iwl_trans*,int *) ;
 int iwl_pcie_txq_free (struct iwl_trans*,int) ;
 int kfree (int *) ;

void iwl_pcie_tx_free(struct iwl_trans *trans)
{
 int txq_id;
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);


 if (trans_pcie->txq) {
  for (txq_id = 0;
       txq_id < trans->cfg->base_params->num_of_queues; txq_id++)
   iwl_pcie_txq_free(trans, txq_id);
 }

 kfree(trans_pcie->txq);
 trans_pcie->txq = ((void*)0);

 iwl_pcie_free_dma_ptr(trans, &trans_pcie->kw);

 iwl_pcie_free_dma_ptr(trans, &trans_pcie->scd_bc_tbls);
}
