
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct iwl_tx_cmd {int dummy; } ;
struct iwl_mvm {int trans; } ;
struct iwl_device_cmd {scalar_t__ payload; } ;
struct TYPE_2__ {scalar_t__ hw_key; } ;
struct ieee80211_tx_info {struct iwl_device_cmd** driver_data; struct iwl_device_cmd status; TYPE_1__ control; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int iwl_mvm_set_tx_cmd (struct iwl_mvm*,struct sk_buff*,struct iwl_tx_cmd*,struct ieee80211_tx_info*,int ) ;
 int iwl_mvm_set_tx_cmd_crypto (struct iwl_mvm*,struct ieee80211_tx_info*,struct iwl_tx_cmd*,struct sk_buff*) ;
 int iwl_mvm_set_tx_cmd_rate (struct iwl_mvm*,struct iwl_tx_cmd*,struct ieee80211_tx_info*,struct ieee80211_sta*,int ) ;
 struct iwl_device_cmd* iwl_trans_alloc_tx_cmd (int ) ;
 int memset (struct iwl_device_cmd*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct iwl_device_cmd *
iwl_mvm_set_tx_params(struct iwl_mvm *mvm, struct sk_buff *skb,
        struct ieee80211_sta *sta, u8 sta_id)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct iwl_device_cmd *dev_cmd;
 struct iwl_tx_cmd *tx_cmd;

 dev_cmd = iwl_trans_alloc_tx_cmd(mvm->trans);

 if (unlikely(!dev_cmd))
  return ((void*)0);

 memset(dev_cmd, 0, sizeof(*dev_cmd));
 tx_cmd = (struct iwl_tx_cmd *)dev_cmd->payload;

 if (info->control.hw_key)
  iwl_mvm_set_tx_cmd_crypto(mvm, info, tx_cmd, skb);

 iwl_mvm_set_tx_cmd(mvm, skb, tx_cmd, info, sta_id);

 iwl_mvm_set_tx_cmd_rate(mvm, tx_cmd, info, sta, hdr->frame_control);

 memset(&info->status, 0, sizeof(info->status));

 info->driver_data[0] = ((void*)0);
 info->driver_data[1] = dev_cmd;

 return dev_cmd;
}
