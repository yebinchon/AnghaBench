
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iwl_mvm_sta {int mac_id_n_color; int sta_id; } ;
struct iwl_mvm_add_sta_cmd {int sleep_state_flags; int mac_id_n_color; int sleep_tx_count; int modify_mask; int sta_id; int add_modify; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
typedef enum ieee80211_frame_release_type { ____Placeholder_ieee80211_frame_release_type } ieee80211_frame_release_type ;
typedef int cmd ;


 int ADD_STA ;
 int CMD_ASYNC ;
 int IEEE80211_FRAME_RELEASE_UAPSD ;
 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int STA_MODE_MODIFY ;
 int STA_MODIFY_SLEEPING_STA_TX_COUNT ;
 int STA_SLEEP_STATE_PS_POLL ;
 int STA_SLEEP_STATE_UAPSD ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_mvm_add_sta_cmd*) ;

void iwl_mvm_sta_modify_sleep_tx_count(struct iwl_mvm *mvm,
           struct ieee80211_sta *sta,
           enum ieee80211_frame_release_type reason,
           u16 cnt)
{
 u16 sleep_state_flags =
  (reason == IEEE80211_FRAME_RELEASE_UAPSD) ?
   STA_SLEEP_STATE_UAPSD : STA_SLEEP_STATE_PS_POLL;
 struct iwl_mvm_sta *mvmsta = (void *)sta->drv_priv;
 struct iwl_mvm_add_sta_cmd cmd = {
  .add_modify = STA_MODE_MODIFY,
  .sta_id = mvmsta->sta_id,
  .modify_mask = STA_MODIFY_SLEEPING_STA_TX_COUNT,
  .sleep_tx_count = cpu_to_le16(cnt),
  .mac_id_n_color = cpu_to_le32(mvmsta->mac_id_n_color),




  .sleep_state_flags = cpu_to_le16(sleep_state_flags),
 };
 int ret;


 ret = iwl_mvm_send_cmd_pdu(mvm, ADD_STA, CMD_ASYNC, sizeof(cmd), &cmd);
 if (ret)
  IWL_ERR(mvm, "Failed to send ADD_STA command (%d)\n", ret);
}
