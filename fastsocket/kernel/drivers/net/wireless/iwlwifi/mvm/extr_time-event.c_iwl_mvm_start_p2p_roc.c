
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_time_event_cmd {void* notify; void* repeat; void* duration; void* max_delay; void* max_frags; void* interval; void* is_present; void* dep_policy; void* apply_time; void* id; void* id_and_color; void* action; } ;
struct iwl_mvm_time_event_data {scalar_t__ running; } ;
struct iwl_mvm_vif {int color; int id; struct iwl_mvm_time_event_data time_event_data; } ;
struct iwl_mvm {int roc_done_wk; int mutex; } ;
struct ieee80211_vif {int dummy; } ;
typedef enum ieee80211_roc_type { ____Placeholder_ieee80211_roc_type } ieee80211_roc_type ;


 int EBUSY ;
 int EINVAL ;
 int FW_CMD_ID_AND_COLOR (int ,int ) ;
 int FW_CTXT_ACTION_ADD ;


 int IWL_MVM_ROC_TE_TYPE_MGMT_TX ;
 int IWL_MVM_ROC_TE_TYPE_NORMAL ;
 int IWL_WARN (struct iwl_mvm*,char*) ;
 int MSEC_TO_TU (int) ;
 int TE_INDEPENDENT ;
 int TE_NOTIF_HOST_EVENT_END ;
 int TE_NOTIF_HOST_EVENT_START ;
 int WARN_ONCE (int,char*) ;
 void* cpu_to_le32 (int) ;
 int flush_work (int *) ;
 int iwl_mvm_time_event_send_add (struct iwl_mvm*,struct ieee80211_vif*,struct iwl_mvm_time_event_data*,struct iwl_time_event_cmd*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int lockdep_assert_held (int *) ;

int iwl_mvm_start_p2p_roc(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
     int duration, enum ieee80211_roc_type type)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mvm_time_event_data *te_data = &mvmvif->time_event_data;
 struct iwl_time_event_cmd time_cmd = {};

 lockdep_assert_held(&mvm->mutex);
 if (te_data->running) {
  IWL_WARN(mvm, "P2P_DEVICE remain on channel already running\n");
  return -EBUSY;
 }





 flush_work(&mvm->roc_done_wk);

 time_cmd.action = cpu_to_le32(FW_CTXT_ACTION_ADD);
 time_cmd.id_and_color =
  cpu_to_le32(FW_CMD_ID_AND_COLOR(mvmvif->id, mvmvif->color));

 switch (type) {
 case 128:
  time_cmd.id = cpu_to_le32(IWL_MVM_ROC_TE_TYPE_NORMAL);
  break;
 case 129:
  time_cmd.id = cpu_to_le32(IWL_MVM_ROC_TE_TYPE_MGMT_TX);
  break;
 default:
  WARN_ONCE(1, "Got an invalid ROC type\n");
  return -EINVAL;
 }

 time_cmd.apply_time = cpu_to_le32(0);
 time_cmd.dep_policy = cpu_to_le32(TE_INDEPENDENT);
 time_cmd.is_present = cpu_to_le32(1);
 time_cmd.interval = cpu_to_le32(1);







 time_cmd.max_frags = cpu_to_le32(MSEC_TO_TU(duration)/20);
 time_cmd.max_delay = cpu_to_le32(MSEC_TO_TU(duration/2));
 time_cmd.duration = cpu_to_le32(MSEC_TO_TU(duration));
 time_cmd.repeat = cpu_to_le32(1);
 time_cmd.notify = cpu_to_le32(TE_NOTIF_HOST_EVENT_START |
          TE_NOTIF_HOST_EVENT_END);

 return iwl_mvm_time_event_send_add(mvm, vif, te_data, &time_cmd);
}
