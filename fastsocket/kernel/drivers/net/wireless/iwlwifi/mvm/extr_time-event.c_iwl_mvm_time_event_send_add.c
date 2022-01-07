
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_time_event_cmd {int id; int duration; } ;
struct iwl_notification_wait {int dummy; } ;
struct iwl_mvm_time_event_data {scalar_t__ id; int list; void* duration; struct ieee80211_vif* vif; } ;
struct iwl_mvm {int time_event_lock; int notif_wait; int time_event_list; int mutex; } ;
struct ieee80211_vif {int dummy; } ;


 int ARRAY_SIZE (int const*) ;
 int CMD_SYNC ;
 int EIO ;
 int IWL_DEBUG_TE (struct iwl_mvm*,char*,void*) ;
 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 scalar_t__ TE_MAX ;

 scalar_t__ WARN_ON (int) ;
 int WARN_ON_ONCE (int) ;
 int iwl_init_notification_wait (int *,struct iwl_notification_wait*,int const*,int ,int ,struct iwl_mvm_time_event_data*) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int const,int ,int,struct iwl_time_event_cmd*) ;
 int iwl_mvm_te_clear_data (struct iwl_mvm*,struct iwl_mvm_time_event_data*) ;
 int iwl_mvm_time_event_response ;
 int iwl_remove_notification (int *,struct iwl_notification_wait*) ;
 int iwl_wait_notification (int *,struct iwl_notification_wait*,int) ;
 void* le32_to_cpu (int ) ;
 int list_add_tail (int *,int *) ;
 int lockdep_assert_held (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int iwl_mvm_time_event_send_add(struct iwl_mvm *mvm,
           struct ieee80211_vif *vif,
           struct iwl_mvm_time_event_data *te_data,
           struct iwl_time_event_cmd *te_cmd)
{
 static const u8 time_event_response[] = { 128 };
 struct iwl_notification_wait wait_time_event;
 int ret;

 lockdep_assert_held(&mvm->mutex);

 IWL_DEBUG_TE(mvm, "Add new TE, duration %d TU\n",
       le32_to_cpu(te_cmd->duration));

 spin_lock_bh(&mvm->time_event_lock);
 if (WARN_ON(te_data->id != TE_MAX)) {
  spin_unlock_bh(&mvm->time_event_lock);
  return -EIO;
 }
 te_data->vif = vif;
 te_data->duration = le32_to_cpu(te_cmd->duration);
 te_data->id = le32_to_cpu(te_cmd->id);
 list_add_tail(&te_data->list, &mvm->time_event_list);
 spin_unlock_bh(&mvm->time_event_lock);
 iwl_init_notification_wait(&mvm->notif_wait, &wait_time_event,
       time_event_response,
       ARRAY_SIZE(time_event_response),
       iwl_mvm_time_event_response, te_data);

 ret = iwl_mvm_send_cmd_pdu(mvm, 128, CMD_SYNC,
       sizeof(*te_cmd), te_cmd);
 if (ret) {
  IWL_ERR(mvm, "Couldn't send TIME_EVENT_CMD: %d\n", ret);
  iwl_remove_notification(&mvm->notif_wait, &wait_time_event);
  goto out_clear_te;
 }


 ret = iwl_wait_notification(&mvm->notif_wait, &wait_time_event, 1);

 WARN_ON_ONCE(ret);

 if (ret) {
 out_clear_te:
  spin_lock_bh(&mvm->time_event_lock);
  iwl_mvm_te_clear_data(mvm, te_data);
  spin_unlock_bh(&mvm->time_event_lock);
 }
 return ret;
}
