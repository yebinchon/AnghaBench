
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iwl_trans_pcie {int queue_used; scalar_t__ scd_base_addr; } ;
struct iwl_trans {int dummy; } ;


 int ARRAY_SIZE (scalar_t__ const*) ;
 int IWL_DEBUG_TX_QUEUES (struct iwl_trans*,char*,int) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 scalar_t__ SCD_TX_STTS_QUEUE_OFFSET (int) ;
 int WARN_ONCE (int,char*,int) ;
 int iwl_pcie_txq_set_inactive (struct iwl_trans*,int) ;
 int iwl_pcie_txq_unmap (struct iwl_trans*,int) ;
 int iwl_trans_write_mem (struct iwl_trans*,scalar_t__,void*,int ) ;
 int test_and_clear_bit (int,int ) ;

void iwl_trans_pcie_txq_disable(struct iwl_trans *trans, int txq_id)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 u32 stts_addr = trans_pcie->scd_base_addr +
   SCD_TX_STTS_QUEUE_OFFSET(txq_id);
 static const u32 zero_val[4] = {};

 if (!test_and_clear_bit(txq_id, trans_pcie->queue_used)) {
  WARN_ONCE(1, "queue %d not used", txq_id);
  return;
 }

 iwl_pcie_txq_set_inactive(trans, txq_id);

 iwl_trans_write_mem(trans, stts_addr, (void *)zero_val,
       ARRAY_SIZE(zero_val));

 iwl_pcie_txq_unmap(trans, txq_id);

 IWL_DEBUG_TX_QUEUES(trans, "Deactivate queue %d\n", txq_id);
}
