
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct iwl_mvm_tid_data {scalar_t__ state; size_t ssn; int txq_id; scalar_t__ next_reclaimed; int seq_number; } ;
struct iwl_mvm_sta {int lock; int sta_id; struct iwl_mvm_tid_data* tid_data; } ;
struct iwl_mvm {scalar_t__* queue_to_mac80211; int mutex; } ;
struct ieee80211_vif {scalar_t__* hw_queue; } ;
struct ieee80211_sta {int addr; scalar_t__ drv_priv; } ;


 int EINVAL ;
 int EIO ;
 int ENXIO ;
 size_t IEEE80211_SEQ_TO_SN (int ) ;
 scalar_t__ IWL_AGG_OFF ;
 scalar_t__ IWL_AGG_STARTING ;
 int IWL_DEBUG_TX_QUEUES (struct iwl_mvm*,char*,int ,size_t,int,size_t,scalar_t__) ;
 scalar_t__ IWL_EMPTYING_HW_QUEUE_ADDBA ;
 int IWL_ERR (struct iwl_mvm*,char*,...) ;
 scalar_t__ IWL_INVALID_MAC80211_QUEUE ;
 size_t IWL_MAX_TID_COUNT ;
 int IWL_MVM_FIRST_AGG_QUEUE ;
 int IWL_MVM_LAST_AGG_QUEUE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int ieee80211_start_tx_ba_cb_irqsafe (struct ieee80211_vif*,int ,size_t) ;
 int lockdep_assert_held (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 size_t* tid_to_ac ;

int iwl_mvm_sta_tx_agg_start(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
        struct ieee80211_sta *sta, u16 tid, u16 *ssn)
{
 struct iwl_mvm_sta *mvmsta = (void *)sta->drv_priv;
 struct iwl_mvm_tid_data *tid_data;
 int txq_id;

 if (WARN_ON_ONCE(tid >= IWL_MAX_TID_COUNT))
  return -EINVAL;

 if (mvmsta->tid_data[tid].state != IWL_AGG_OFF) {
  IWL_ERR(mvm, "Start AGG when state is not IWL_AGG_OFF %d!\n",
   mvmsta->tid_data[tid].state);
  return -ENXIO;
 }

 lockdep_assert_held(&mvm->mutex);

 for (txq_id = IWL_MVM_FIRST_AGG_QUEUE;
      txq_id <= IWL_MVM_LAST_AGG_QUEUE; txq_id++)
  if (mvm->queue_to_mac80211[txq_id] ==
      IWL_INVALID_MAC80211_QUEUE)
   break;

 if (txq_id > IWL_MVM_LAST_AGG_QUEUE) {
  IWL_ERR(mvm, "Failed to allocate agg queue\n");
  return -EIO;
 }


 mvm->queue_to_mac80211[txq_id] = vif->hw_queue[tid_to_ac[tid]];

 spin_lock_bh(&mvmsta->lock);
 tid_data = &mvmsta->tid_data[tid];
 tid_data->ssn = IEEE80211_SEQ_TO_SN(tid_data->seq_number);
 tid_data->txq_id = txq_id;
 *ssn = tid_data->ssn;

 IWL_DEBUG_TX_QUEUES(mvm,
       "Start AGG: sta %d tid %d queue %d - ssn = %d, next_recl = %d\n",
       mvmsta->sta_id, tid, txq_id, tid_data->ssn,
       tid_data->next_reclaimed);

 if (tid_data->ssn == tid_data->next_reclaimed) {
  tid_data->state = IWL_AGG_STARTING;
  ieee80211_start_tx_ba_cb_irqsafe(vif, sta->addr, tid);
 } else {
  tid_data->state = IWL_EMPTYING_HW_QUEUE_ADDBA;
 }

 spin_unlock_bh(&mvmsta->lock);

 return 0;
}
