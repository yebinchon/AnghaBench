
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_2__ {int txq_id; int state; int ssn; } ;
struct iwl_tid_data {int next_reclaimed; TYPE_1__ agg; int seq_number; } ;
struct iwl_priv {int trans; int agg_q_alloc; int sta_lock; struct iwl_tid_data** tid_data; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; } ;
typedef enum iwl_agg_state { ____Placeholder_iwl_agg_state } iwl_agg_state ;


 int ENXIO ;
 int IEEE80211_SEQ_TO_SN (int ) ;
 int IWL_AGG_OFF ;


 int IWL_DEBUG_HT (struct iwl_priv*,char*) ;
 int IWL_DEBUG_TX_QUEUES (struct iwl_priv*,char*,int,...) ;

 int IWL_EMPTYING_HW_QUEUE_DELBA ;
 int IWL_ERR (struct iwl_priv*,char*,size_t) ;
 int IWL_INVALID_STATION ;
 int IWL_WARN (struct iwl_priv*,char*,int,size_t,int) ;
 int ieee80211_stop_tx_ba_cb_irqsafe (struct ieee80211_vif*,int ,size_t) ;
 int iwl_sta_id (struct ieee80211_sta*) ;
 int iwl_trans_txq_disable (int ,int) ;
 int iwlagn_dealloc_agg_txq (struct iwl_priv*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_bit (int,int ) ;

int iwlagn_tx_agg_stop(struct iwl_priv *priv, struct ieee80211_vif *vif,
   struct ieee80211_sta *sta, u16 tid)
{
 struct iwl_tid_data *tid_data;
 int sta_id, txq_id;
 enum iwl_agg_state agg_state;

 sta_id = iwl_sta_id(sta);

 if (sta_id == IWL_INVALID_STATION) {
  IWL_ERR(priv, "Invalid station for AGG tid %d\n", tid);
  return -ENXIO;
 }

 spin_lock_bh(&priv->sta_lock);

 tid_data = &priv->tid_data[sta_id][tid];
 txq_id = tid_data->agg.txq_id;

 switch (tid_data->agg.state) {
 case 128:






  IWL_DEBUG_HT(priv, "AGG stop before setup done\n");
  goto turn_off;
 case 129:




  IWL_DEBUG_HT(priv, "AGG stop before AGG became operational\n");
  goto turn_off;
 case 130:
  break;
 default:
  IWL_WARN(priv,
    "Stopping AGG while state not ON or starting for %d on %d (%d)\n",
    sta_id, tid, tid_data->agg.state);
  spin_unlock_bh(&priv->sta_lock);
  return 0;
 }

 tid_data->agg.ssn = IEEE80211_SEQ_TO_SN(tid_data->seq_number);


 if (!test_bit(txq_id, priv->agg_q_alloc)) {
  IWL_DEBUG_TX_QUEUES(priv,
   "stopping AGG on STA/TID %d/%d but hwq %d not used\n",
   sta_id, tid, txq_id);
 } else if (tid_data->agg.ssn != tid_data->next_reclaimed) {
  IWL_DEBUG_TX_QUEUES(priv,
        "Can't proceed: ssn %d, next_recl = %d\n",
        tid_data->agg.ssn,
        tid_data->next_reclaimed);
  tid_data->agg.state = IWL_EMPTYING_HW_QUEUE_DELBA;
  spin_unlock_bh(&priv->sta_lock);
  return 0;
 }

 IWL_DEBUG_TX_QUEUES(priv, "Can proceed: ssn = next_recl = %d\n",
       tid_data->agg.ssn);
turn_off:
 agg_state = tid_data->agg.state;
 tid_data->agg.state = IWL_AGG_OFF;

 spin_unlock_bh(&priv->sta_lock);

 if (test_bit(txq_id, priv->agg_q_alloc)) {






  if (agg_state == 130)
   iwl_trans_txq_disable(priv->trans, txq_id);
  else
   IWL_DEBUG_TX_QUEUES(priv, "Don't disable tx agg: %d\n",
         agg_state);
  iwlagn_dealloc_agg_txq(priv, txq_id);
 }

 ieee80211_stop_tx_ba_cb_irqsafe(vif, sta->addr, tid);

 return 0;
}
