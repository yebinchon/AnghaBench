
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_10__ {int state; int ssn; int txq_id; } ;
struct iwl_tid_data {TYPE_5__ agg; int next_reclaimed; } ;
struct iwl_priv {int trans; struct iwl_tid_data** tid_data; TYPE_4__* contexts; TYPE_3__* stations; int sta_lock; } ;
struct ieee80211_vif {int dummy; } ;
typedef enum iwl_rxon_context_id { ____Placeholder_iwl_rxon_context_id } iwl_rxon_context_id ;
struct TYPE_9__ {struct ieee80211_vif* vif; } ;
struct TYPE_6__ {size_t* addr; } ;
struct TYPE_7__ {TYPE_1__ sta; } ;
struct TYPE_8__ {int ctxid; TYPE_2__ sta; } ;


 int IWL_AGG_OFF ;
 int IWL_AGG_STARTING ;
 int IWL_DEBUG_TX_QUEUES (struct iwl_priv*,char*,int ) ;


 int ieee80211_start_tx_ba_cb_irqsafe (struct ieee80211_vif*,size_t*,size_t) ;
 int ieee80211_stop_tx_ba_cb_irqsafe (struct ieee80211_vif*,size_t*,size_t) ;
 int iwl_trans_txq_disable (int ,int ) ;
 int iwlagn_dealloc_agg_txq (struct iwl_priv*,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void iwlagn_check_ratid_empty(struct iwl_priv *priv, int sta_id, u8 tid)
{
 struct iwl_tid_data *tid_data = &priv->tid_data[sta_id][tid];
 enum iwl_rxon_context_id ctx;
 struct ieee80211_vif *vif;
 u8 *addr;

 lockdep_assert_held(&priv->sta_lock);

 addr = priv->stations[sta_id].sta.sta.addr;
 ctx = priv->stations[sta_id].ctxid;
 vif = priv->contexts[ctx].vif;

 switch (priv->tid_data[sta_id][tid].agg.state) {
 case 128:

  if (tid_data->agg.ssn == tid_data->next_reclaimed) {
   IWL_DEBUG_TX_QUEUES(priv,
    "Can continue DELBA flow ssn = next_recl ="
    " %d", tid_data->next_reclaimed);
   iwl_trans_txq_disable(priv->trans,
           tid_data->agg.txq_id);
   iwlagn_dealloc_agg_txq(priv, tid_data->agg.txq_id);
   tid_data->agg.state = IWL_AGG_OFF;
   ieee80211_stop_tx_ba_cb_irqsafe(vif, addr, tid);
  }
  break;
 case 129:

  if (tid_data->agg.ssn == tid_data->next_reclaimed) {
   IWL_DEBUG_TX_QUEUES(priv,
    "Can continue ADDBA flow ssn = next_recl ="
    " %d", tid_data->next_reclaimed);
   tid_data->agg.state = IWL_AGG_STARTING;
   ieee80211_start_tx_ba_cb_irqsafe(vif, addr, tid);
  }
  break;
 default:
  break;
 }
}
