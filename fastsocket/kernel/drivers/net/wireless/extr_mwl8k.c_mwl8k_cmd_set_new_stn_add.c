
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_12__ {void* length; void* code; } ;
struct mwl8k_cmd_set_new_stn {int mac_ht_param_info; int is_qos_sta; TYPE_6__ header; void* ht_capabilities_info; int * ht_rates; int legacy_rates; void* action; void* stn_id; int mac_addr; void* aid; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_10__ {int * rx_mask; } ;
struct TYPE_11__ {int cap; int ampdu_factor; int ampdu_density; TYPE_4__ mcs; scalar_t__ ht_supported; } ;
struct ieee80211_sta {int aid; int* supp_rates; TYPE_5__ ht_cap; int addr; } ;
struct TYPE_8__ {TYPE_1__* chan; } ;
struct TYPE_9__ {TYPE_2__ chandef; } ;
struct ieee80211_hw {TYPE_3__ conf; } ;
struct TYPE_7__ {size_t band; } ;


 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 size_t IEEE80211_BAND_2GHZ ;
 size_t IEEE80211_BAND_5GHZ ;
 int MWL8K_CMD_SET_NEW_STN ;
 int MWL8K_STA_ACTION_ADD ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int kfree (struct mwl8k_cmd_set_new_stn*) ;
 struct mwl8k_cmd_set_new_stn* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int mwl8k_post_pervif_cmd (struct ieee80211_hw*,struct ieee80211_vif*,TYPE_6__*) ;

__attribute__((used)) static int mwl8k_cmd_set_new_stn_add(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif,
         struct ieee80211_sta *sta)
{
 struct mwl8k_cmd_set_new_stn *cmd;
 u32 rates;
 int rc;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (cmd == ((void*)0))
  return -ENOMEM;

 cmd->header.code = cpu_to_le16(MWL8K_CMD_SET_NEW_STN);
 cmd->header.length = cpu_to_le16(sizeof(*cmd));
 cmd->aid = cpu_to_le16(sta->aid);
 memcpy(cmd->mac_addr, sta->addr, ETH_ALEN);
 cmd->stn_id = cpu_to_le16(sta->aid);
 cmd->action = cpu_to_le16(MWL8K_STA_ACTION_ADD);
 if (hw->conf.chandef.chan->band == IEEE80211_BAND_2GHZ)
  rates = sta->supp_rates[IEEE80211_BAND_2GHZ];
 else
  rates = sta->supp_rates[IEEE80211_BAND_5GHZ] << 5;
 cmd->legacy_rates = cpu_to_le32(rates);
 if (sta->ht_cap.ht_supported) {
  cmd->ht_rates[0] = sta->ht_cap.mcs.rx_mask[0];
  cmd->ht_rates[1] = sta->ht_cap.mcs.rx_mask[1];
  cmd->ht_rates[2] = sta->ht_cap.mcs.rx_mask[2];
  cmd->ht_rates[3] = sta->ht_cap.mcs.rx_mask[3];
  cmd->ht_capabilities_info = cpu_to_le16(sta->ht_cap.cap);
  cmd->mac_ht_param_info = (sta->ht_cap.ampdu_factor & 3) |
   ((sta->ht_cap.ampdu_density & 7) << 2);
  cmd->is_qos_sta = 1;
 }

 rc = mwl8k_post_pervif_cmd(hw, vif, &cmd->header);
 kfree(cmd);

 return rc;
}
