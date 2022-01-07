
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct iwl_mvm_tid_data {size_t txq_id; int state; } ;
struct iwl_mvm_sta {int lock; int sta_id; struct iwl_mvm_tid_data* tid_data; } ;
struct iwl_mvm {int * queue_to_mac80211; int trans; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
typedef enum iwl_mvm_agg_state { ____Placeholder_iwl_mvm_agg_state } iwl_mvm_agg_state ;


 int BIT (size_t) ;
 int IWL_AGG_OFF ;
 int IWL_AGG_ON ;
 int IWL_DEBUG_TX_QUEUES (struct iwl_mvm*,char*,int ,size_t,size_t,int) ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 int IWL_INVALID_MAC80211_QUEUE ;
 scalar_t__ iwl_mvm_flush_tx_path (struct iwl_mvm*,int ,int) ;
 int iwl_trans_txq_disable (int ,size_t) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int iwl_mvm_sta_tx_agg_flush(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
       struct ieee80211_sta *sta, u16 tid)
{
 struct iwl_mvm_sta *mvmsta = (void *)sta->drv_priv;
 struct iwl_mvm_tid_data *tid_data = &mvmsta->tid_data[tid];
 u16 txq_id;
 enum iwl_mvm_agg_state old_state;





 spin_lock_bh(&mvmsta->lock);
 txq_id = tid_data->txq_id;
 IWL_DEBUG_TX_QUEUES(mvm, "Flush AGG: sta %d tid %d q %d state %d\n",
       mvmsta->sta_id, tid, txq_id, tid_data->state);
 old_state = tid_data->state;
 tid_data->state = IWL_AGG_OFF;
 spin_unlock_bh(&mvmsta->lock);

 if (old_state >= IWL_AGG_ON) {
  if (iwl_mvm_flush_tx_path(mvm, BIT(txq_id), 1))
   IWL_ERR(mvm, "Couldn't flush the AGG queue\n");

  iwl_trans_txq_disable(mvm->trans, tid_data->txq_id);
 }

 mvm->queue_to_mac80211[tid_data->txq_id] =
    IWL_INVALID_MAC80211_QUEUE;

 return 0;
}
