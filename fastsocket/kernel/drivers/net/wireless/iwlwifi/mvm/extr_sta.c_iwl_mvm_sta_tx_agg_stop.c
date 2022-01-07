
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct iwl_mvm_tid_data {size_t txq_id; int state; int ssn; int next_reclaimed; int seq_number; } ;
struct iwl_mvm_sta {int lock; int sta_id; struct iwl_mvm_tid_data* tid_data; } ;
struct iwl_mvm {int * queue_to_mac80211; int mutex; int trans; int status; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; scalar_t__ drv_priv; } ;


 int EINVAL ;
 int IEEE80211_SEQ_TO_SN (int ) ;
 int IWL_AGG_OFF ;


 int IWL_DEBUG_TX_QUEUES (struct iwl_mvm*,char*,int,int,...) ;

 int IWL_EMPTYING_HW_QUEUE_DELBA ;
 int IWL_ERR (struct iwl_mvm*,char*,size_t,...) ;
 int IWL_INVALID_MAC80211_QUEUE ;
 int IWL_MVM_STATUS_IN_HW_RESTART ;
 int ieee80211_stop_tx_ba_cb_irqsafe (struct ieee80211_vif*,int ,size_t) ;
 int iwl_trans_txq_disable (int ,size_t) ;
 int lockdep_assert_held (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int iwl_mvm_sta_tx_agg_stop(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
       struct ieee80211_sta *sta, u16 tid)
{
 struct iwl_mvm_sta *mvmsta = (void *)sta->drv_priv;
 struct iwl_mvm_tid_data *tid_data = &mvmsta->tid_data[tid];
 u16 txq_id;
 int err;






 if (test_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status)) {
  ieee80211_stop_tx_ba_cb_irqsafe(vif, sta->addr, tid);
  return 0;
 }

 spin_lock_bh(&mvmsta->lock);

 txq_id = tid_data->txq_id;

 IWL_DEBUG_TX_QUEUES(mvm, "Stop AGG: sta %d tid %d q %d state %d\n",
       mvmsta->sta_id, tid, txq_id, tid_data->state);

 switch (tid_data->state) {
 case 130:
  tid_data->ssn = IEEE80211_SEQ_TO_SN(tid_data->seq_number);

  IWL_DEBUG_TX_QUEUES(mvm,
        "ssn = %d, next_recl = %d\n",
        tid_data->ssn, tid_data->next_reclaimed);


  if (tid_data->ssn != tid_data->next_reclaimed) {
   tid_data->state = IWL_EMPTYING_HW_QUEUE_DELBA;
   err = 0;
   break;
  }

  tid_data->ssn = 0xffff;
  iwl_trans_txq_disable(mvm->trans, txq_id);

 case 129:
 case 128:






  lockdep_assert_held(&mvm->mutex);
  mvm->queue_to_mac80211[txq_id] = IWL_INVALID_MAC80211_QUEUE;

  ieee80211_stop_tx_ba_cb_irqsafe(vif, sta->addr, tid);
  tid_data->state = IWL_AGG_OFF;
  err = 0;
  break;
 default:
  IWL_ERR(mvm,
   "Stopping AGG while state not ON or starting for %d on %d (%d)\n",
   mvmsta->sta_id, tid, tid_data->state);
  IWL_ERR(mvm,
   "\ttid_data->txq_id = %d\n", tid_data->txq_id);
  err = -EINVAL;
 }

 spin_unlock_bh(&mvmsta->lock);

 return err;
}
