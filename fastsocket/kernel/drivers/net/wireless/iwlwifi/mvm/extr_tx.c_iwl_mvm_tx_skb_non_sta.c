
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct iwl_tx_cmd {int hdr; } ;
struct TYPE_6__ {int sta_id; } ;
struct iwl_mvm_vif {TYPE_2__ bcast_sta; } ;
struct TYPE_7__ {int sta_id; } ;
struct iwl_mvm {int trans; TYPE_3__ aux_sta; } ;
struct iwl_device_cmd {scalar_t__ payload; } ;
struct TYPE_5__ {TYPE_4__* vif; } ;
struct ieee80211_tx_info {int flags; scalar_t__ hw_queue; TYPE_1__ control; } ;
struct ieee80211_hdr {int frame_control; } ;
struct TYPE_8__ {scalar_t__ cab_queue; scalar_t__ type; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_AMPDU ;
 int IEEE80211_TX_CTL_SEND_AFTER_DTIM ;
 int IWL_DEBUG_TX (struct iwl_mvm*,char*,int ,scalar_t__) ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int ieee80211_hdrlen (int ) ;
 struct iwl_device_cmd* iwl_mvm_set_tx_params (struct iwl_mvm*,struct sk_buff*,int *,int ) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (TYPE_4__*) ;
 int iwl_trans_free_tx_cmd (int ,struct iwl_device_cmd*) ;
 scalar_t__ iwl_trans_tx (int ,struct sk_buff*,struct iwl_device_cmd*,scalar_t__) ;
 int memcpy (int ,struct ieee80211_hdr*,int ) ;

int iwl_mvm_tx_skb_non_sta(struct iwl_mvm *mvm, struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct iwl_device_cmd *dev_cmd;
 struct iwl_tx_cmd *tx_cmd;
 u8 sta_id;

 if (WARN_ON_ONCE(info->flags & IEEE80211_TX_CTL_AMPDU))
  return -1;

 if (WARN_ON_ONCE(info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM &&
    (!info->control.vif ||
     info->hw_queue != info->control.vif->cab_queue)))
  return -1;






 if (info->control.vif &&
     (info->control.vif->type == NL80211_IFTYPE_P2P_DEVICE ||
      info->control.vif->type == NL80211_IFTYPE_AP)) {
  struct iwl_mvm_vif *mvmvif =
   iwl_mvm_vif_from_mac80211(info->control.vif);
  sta_id = mvmvif->bcast_sta.sta_id;
 } else {
  sta_id = mvm->aux_sta.sta_id;
 }

 IWL_DEBUG_TX(mvm, "station Id %d, queue=%d\n", sta_id, info->hw_queue);

 dev_cmd = iwl_mvm_set_tx_params(mvm, skb, ((void*)0), sta_id);
 if (!dev_cmd)
  return -1;


 tx_cmd = (struct iwl_tx_cmd *)dev_cmd->payload;


 memcpy(tx_cmd->hdr, hdr, ieee80211_hdrlen(hdr->frame_control));

 if (iwl_trans_tx(mvm->trans, skb, dev_cmd, info->hw_queue)) {
  iwl_trans_free_tx_cmd(mvm->trans, dev_cmd);
  return -1;
 }

 return 0;
}
