
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct iwl_tx_cmd {int hdr; } ;
struct iwl_mvm_sta {size_t sta_id; int lock; TYPE_1__* tid_data; } ;
struct iwl_mvm {int trans; int * pending_frames; } ;
struct iwl_device_cmd {scalar_t__ payload; } ;
struct ieee80211_tx_info {size_t hw_queue; int flags; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hdr {int seq_ctrl; int frame_control; } ;
typedef int __le16 ;
struct TYPE_2__ {int seq_number; scalar_t__ state; size_t txq_id; } ;


 size_t IEEE80211_QOS_CTL_TID_MASK ;
 int IEEE80211_SCTL_FRAG ;
 int IEEE80211_SCTL_SEQ ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_AMPDU ;
 int IEEE80211_TX_CTL_SEND_AFTER_DTIM ;
 scalar_t__ IWL_AGG_ON ;
 int IWL_DEBUG_TX (struct iwl_mvm*,char*,size_t,size_t,size_t,int) ;
 size_t IWL_MAX_TID_COUNT ;
 size_t IWL_MVM_FIRST_AGG_QUEUE ;
 size_t IWL_MVM_STATION_COUNT ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int atomic_inc (int *) ;
 int cpu_to_le16 (int) ;
 size_t* ieee80211_get_qos_ctl (struct ieee80211_hdr*) ;
 int ieee80211_has_morefrags (int ) ;
 int ieee80211_hdrlen (int ) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;
 int ieee80211_is_qos_nullfunc (int ) ;
 struct iwl_device_cmd* iwl_mvm_set_tx_params (struct iwl_mvm*,struct sk_buff*,struct ieee80211_sta*,size_t) ;
 int iwl_trans_free_tx_cmd (int ,struct iwl_device_cmd*) ;
 scalar_t__ iwl_trans_tx (int ,struct sk_buff*,struct iwl_device_cmd*,size_t) ;
 int memcpy (int ,struct ieee80211_hdr*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int iwl_mvm_tx_skb(struct iwl_mvm *mvm, struct sk_buff *skb,
     struct ieee80211_sta *sta)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct iwl_mvm_sta *mvmsta;
 struct iwl_device_cmd *dev_cmd;
 struct iwl_tx_cmd *tx_cmd;
 __le16 fc;
 u16 seq_number = 0;
 u8 tid = IWL_MAX_TID_COUNT;
 u8 txq_id = info->hw_queue;
 bool is_data_qos = 0, is_ampdu = 0;

 mvmsta = (void *)sta->drv_priv;
 fc = hdr->frame_control;

 if (WARN_ON_ONCE(!mvmsta))
  return -1;

 if (WARN_ON_ONCE(mvmsta->sta_id == IWL_MVM_STATION_COUNT))
  return -1;

 dev_cmd = iwl_mvm_set_tx_params(mvm, skb, sta, mvmsta->sta_id);
 if (!dev_cmd)
  goto drop;

 tx_cmd = (struct iwl_tx_cmd *)dev_cmd->payload;


 spin_lock(&mvmsta->lock);

 if (ieee80211_is_data_qos(fc) && !ieee80211_is_qos_nullfunc(fc)) {
  u8 *qc = ((void*)0);
  qc = ieee80211_get_qos_ctl(hdr);
  tid = qc[0] & IEEE80211_QOS_CTL_TID_MASK;
  if (WARN_ON_ONCE(tid >= IWL_MAX_TID_COUNT))
   goto drop_unlock_sta;

  seq_number = mvmsta->tid_data[tid].seq_number;
  seq_number &= IEEE80211_SCTL_SEQ;
  hdr->seq_ctrl &= cpu_to_le16(IEEE80211_SCTL_FRAG);
  hdr->seq_ctrl |= cpu_to_le16(seq_number);
  seq_number += 0x10;
  is_data_qos = 1;
  is_ampdu = info->flags & IEEE80211_TX_CTL_AMPDU;
 }


 memcpy(tx_cmd->hdr, hdr, ieee80211_hdrlen(fc));

 WARN_ON_ONCE(info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM);

 if (is_ampdu) {
  if (WARN_ON_ONCE(mvmsta->tid_data[tid].state != IWL_AGG_ON))
   goto drop_unlock_sta;
  txq_id = mvmsta->tid_data[tid].txq_id;
 }

 IWL_DEBUG_TX(mvm, "TX to [%d|%d] Q:%d - seq: 0x%x\n", mvmsta->sta_id,
       tid, txq_id, seq_number);


 if (iwl_trans_tx(mvm->trans, skb, dev_cmd, txq_id))
  goto drop_unlock_sta;

 if (is_data_qos && !ieee80211_has_morefrags(fc))
  mvmsta->tid_data[tid].seq_number = seq_number;

 spin_unlock(&mvmsta->lock);

 if (txq_id < IWL_MVM_FIRST_AGG_QUEUE)
  atomic_inc(&mvm->pending_frames[mvmsta->sta_id]);

 return 0;

drop_unlock_sta:
 iwl_trans_free_tx_cmd(mvm->trans, dev_cmd);
 spin_unlock(&mvmsta->lock);
drop:
 return -1;
}
