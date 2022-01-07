
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct peer_capability_info {int extended_ht_caps; int interop; int station_id; scalar_t__ amsdu_enabled; int ht_rates; int legacy_rates; void* ht_caps; int ht_support; void* basic_caps; int peer_type; } ;
struct TYPE_14__ {void* length; void* code; } ;
struct mwl8k_cmd_update_stadb {TYPE_7__ header; struct peer_capability_info peer_info; int peer_addr; int action; } ;
struct TYPE_8__ {int assoc_capability; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
struct TYPE_12__ {int rx_mask; } ;
struct TYPE_13__ {int cap; int ampdu_factor; int ampdu_density; TYPE_5__ mcs; int ht_supported; } ;
struct ieee80211_sta {int* supp_rates; TYPE_6__ ht_cap; int addr; } ;
struct TYPE_10__ {TYPE_2__* chan; } ;
struct TYPE_11__ {TYPE_3__ chandef; } ;
struct ieee80211_hw {TYPE_4__ conf; } ;
struct TYPE_9__ {size_t band; } ;


 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 size_t IEEE80211_BAND_2GHZ ;
 size_t IEEE80211_BAND_5GHZ ;
 int MWL8K_CMD_UPDATE_STADB ;
 int MWL8K_PEER_TYPE_ACCESSPOINT ;
 int MWL8K_STA_DB_MODIFY_ENTRY ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int kfree (struct mwl8k_cmd_update_stadb*) ;
 struct mwl8k_cmd_update_stadb* kzalloc (int,int ) ;
 int legacy_rate_mask_to_array (int ,int) ;
 int memcpy (int ,int ,int) ;
 int mwl8k_post_cmd (struct ieee80211_hw*,TYPE_7__*) ;

__attribute__((used)) static int mwl8k_cmd_update_stadb_add(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif,
          struct ieee80211_sta *sta)
{
 struct mwl8k_cmd_update_stadb *cmd;
 struct peer_capability_info *p;
 u32 rates;
 int rc;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (cmd == ((void*)0))
  return -ENOMEM;

 cmd->header.code = cpu_to_le16(MWL8K_CMD_UPDATE_STADB);
 cmd->header.length = cpu_to_le16(sizeof(*cmd));
 cmd->action = cpu_to_le32(MWL8K_STA_DB_MODIFY_ENTRY);
 memcpy(cmd->peer_addr, sta->addr, ETH_ALEN);

 p = &cmd->peer_info;
 p->peer_type = MWL8K_PEER_TYPE_ACCESSPOINT;
 p->basic_caps = cpu_to_le16(vif->bss_conf.assoc_capability);
 p->ht_support = sta->ht_cap.ht_supported;
 p->ht_caps = cpu_to_le16(sta->ht_cap.cap);
 p->extended_ht_caps = (sta->ht_cap.ampdu_factor & 3) |
  ((sta->ht_cap.ampdu_density & 7) << 2);
 if (hw->conf.chandef.chan->band == IEEE80211_BAND_2GHZ)
  rates = sta->supp_rates[IEEE80211_BAND_2GHZ];
 else
  rates = sta->supp_rates[IEEE80211_BAND_5GHZ] << 5;
 legacy_rate_mask_to_array(p->legacy_rates, rates);
 memcpy(p->ht_rates, sta->ht_cap.mcs.rx_mask, 16);
 p->interop = 1;
 p->amsdu_enabled = 0;

 rc = mwl8k_post_cmd(hw, &cmd->header);
 if (!rc)
  rc = p->station_id;
 kfree(cmd);

 return rc;
}
