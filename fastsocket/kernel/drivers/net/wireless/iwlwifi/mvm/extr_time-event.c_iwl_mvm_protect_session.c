
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_time_event_cmd {void* notify; void* repeat; void* duration; void* interval_reciprocal; void* interval; void* max_delay; void* max_frags; void* is_present; int dep_policy; void* apply_time; void* id; void* id_and_color; void* action; } ;
struct iwl_mvm_time_event_data {scalar_t__ end_jiffies; int uid; scalar_t__ running; } ;
struct iwl_mvm_vif {int color; int id; struct iwl_mvm_time_event_data time_event_data; } ;
struct iwl_mvm {int trans; int mutex; } ;
struct ieee80211_vif {int dummy; } ;


 int DEVICE_SYSTEM_TIME_REG ;
 int FW_CMD_ID_AND_COLOR (int ,int ) ;
 int FW_CTXT_ACTION_ADD ;
 int IWL_DEBUG_TE (struct iwl_mvm*,char*,int ,...) ;
 int TE_BSS_STA_AGGRESSIVE_ASSOC ;
 int TE_FRAG_NONE ;
 int TE_INDEPENDENT ;
 int TE_NOTIF_HOST_EVENT_END ;
 int TE_NOTIF_HOST_EVENT_START ;
 scalar_t__ TU_TO_JIFFIES (int) ;
 void* cpu_to_le32 (int) ;
 int iwl_mvm_reciprocal (int) ;
 int iwl_mvm_stop_session_protection (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_time_event_send_add (struct iwl_mvm*,struct ieee80211_vif*,struct iwl_mvm_time_event_data*,struct iwl_time_event_cmd*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int iwl_read_prph (int ,int ) ;
 scalar_t__ jiffies ;
 int jiffies_to_msecs (scalar_t__) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

void iwl_mvm_protect_session(struct iwl_mvm *mvm,
        struct ieee80211_vif *vif,
        u32 duration, u32 min_duration)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mvm_time_event_data *te_data = &mvmvif->time_event_data;
 struct iwl_time_event_cmd time_cmd = {};

 lockdep_assert_held(&mvm->mutex);

 if (te_data->running &&
     time_after(te_data->end_jiffies,
         jiffies + TU_TO_JIFFIES(min_duration))) {
  IWL_DEBUG_TE(mvm, "We have enough time in the current TE: %u\n",
        jiffies_to_msecs(te_data->end_jiffies - jiffies));
  return;
 }

 if (te_data->running) {
  IWL_DEBUG_TE(mvm, "extend 0x%x: only %u ms left\n",
        te_data->uid,
        jiffies_to_msecs(te_data->end_jiffies - jiffies));
  iwl_mvm_stop_session_protection(mvm, vif);
 }

 time_cmd.action = cpu_to_le32(FW_CTXT_ACTION_ADD);
 time_cmd.id_and_color =
  cpu_to_le32(FW_CMD_ID_AND_COLOR(mvmvif->id, mvmvif->color));
 time_cmd.id = cpu_to_le32(TE_BSS_STA_AGGRESSIVE_ASSOC);

 time_cmd.apply_time =
  cpu_to_le32(iwl_read_prph(mvm->trans, DEVICE_SYSTEM_TIME_REG));

 time_cmd.dep_policy = TE_INDEPENDENT;
 time_cmd.is_present = cpu_to_le32(1);
 time_cmd.max_frags = cpu_to_le32(TE_FRAG_NONE);
 time_cmd.max_delay = cpu_to_le32(500);

 time_cmd.interval = cpu_to_le32(1);
 time_cmd.interval_reciprocal = cpu_to_le32(iwl_mvm_reciprocal(1));
 time_cmd.duration = cpu_to_le32(duration);
 time_cmd.repeat = cpu_to_le32(1);
 time_cmd.notify = cpu_to_le32(TE_NOTIF_HOST_EVENT_START |
          TE_NOTIF_HOST_EVENT_END);

 iwl_mvm_time_event_send_add(mvm, vif, te_data, &time_cmd);
}
