
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int sequence; } ;
struct iwl_rx_packet {TYPE_1__ hdr; scalar_t__ data; } ;
struct iwl_mvm_tx_resp {int initial_rate; int ra_tid; } ;
struct iwl_mvm_sta {TYPE_2__* tid_data; } ;
struct iwl_mvm {int * fw_id_to_mac_id; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct TYPE_4__ {int rate_n_flags; } ;


 int IS_ERR_OR_NULL (struct ieee80211_sta*) ;
 scalar_t__ IWL_MVM_FIRST_AGG_QUEUE ;
 int IWL_MVM_TX_RES_GET_RA (int ) ;
 int IWL_MVM_TX_RES_GET_TID (int ) ;
 int IWL_TID_NON_QOS ;
 scalar_t__ SEQ_TO_QUEUE (int ) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int iwl_mvm_rx_tx_cmd_agg_dbg (struct iwl_mvm*,struct iwl_rx_packet*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 struct ieee80211_sta* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void iwl_mvm_rx_tx_cmd_agg(struct iwl_mvm *mvm,
      struct iwl_rx_packet *pkt)
{
 struct iwl_mvm_tx_resp *tx_resp = (void *)pkt->data;
 int sta_id = IWL_MVM_TX_RES_GET_RA(tx_resp->ra_tid);
 int tid = IWL_MVM_TX_RES_GET_TID(tx_resp->ra_tid);
 u16 sequence = le16_to_cpu(pkt->hdr.sequence);
 struct ieee80211_sta *sta;

 if (WARN_ON_ONCE(SEQ_TO_QUEUE(sequence) < IWL_MVM_FIRST_AGG_QUEUE))
  return;

 if (WARN_ON_ONCE(tid == IWL_TID_NON_QOS))
  return;

 iwl_mvm_rx_tx_cmd_agg_dbg(mvm, pkt);

 rcu_read_lock();

 sta = rcu_dereference(mvm->fw_id_to_mac_id[sta_id]);

 if (!WARN_ON_ONCE(IS_ERR_OR_NULL(sta))) {
  struct iwl_mvm_sta *mvmsta = (void *)sta->drv_priv;
  mvmsta->tid_data[tid].rate_n_flags =
   le32_to_cpu(tx_resp->initial_rate);
 }

 rcu_read_unlock();
}
