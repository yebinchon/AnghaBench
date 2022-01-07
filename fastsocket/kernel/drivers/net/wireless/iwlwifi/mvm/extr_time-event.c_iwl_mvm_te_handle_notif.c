
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_time_event_notif {int action; int status; int unique_id; } ;
struct iwl_mvm_time_event_data {int end_jiffies; int running; TYPE_2__* vif; int duration; } ;
struct iwl_mvm {int hw; int status; int time_event_lock; } ;
struct TYPE_3__ {int dtim_period; int assoc; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ bss_conf; } ;


 int IWL_DEBUG_TE (struct iwl_mvm*,char*,int,int) ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 int IWL_MVM_STATUS_ROC_RUNNING ;
 int IWL_WARN (struct iwl_mvm*,char*) ;
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int TE_NOTIF_HOST_EVENT_END ;
 int TE_NOTIF_HOST_EVENT_START ;
 int TU_TO_JIFFIES (int ) ;
 int WARN_ONCE (int,char*) ;
 int ieee80211_connection_loss (TYPE_2__*) ;
 int ieee80211_ready_on_channel (int ) ;
 int ieee80211_remain_on_channel_expired (int ) ;
 int iwl_mvm_roc_finished (struct iwl_mvm*) ;
 int iwl_mvm_te_clear_data (struct iwl_mvm*,struct iwl_mvm_time_event_data*) ;
 int jiffies ;
 int le32_to_cpu (int ) ;
 int lockdep_assert_held (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void iwl_mvm_te_handle_notif(struct iwl_mvm *mvm,
        struct iwl_mvm_time_event_data *te_data,
        struct iwl_time_event_notif *notif)
{
 lockdep_assert_held(&mvm->time_event_lock);

 IWL_DEBUG_TE(mvm, "Handle time event notif - UID = 0x%x action %d\n",
       le32_to_cpu(notif->unique_id),
       le32_to_cpu(notif->action));
 WARN_ONCE(!le32_to_cpu(notif->status),
    "Failed to schedule time event\n");

 if (le32_to_cpu(notif->action) & TE_NOTIF_HOST_EVENT_END) {
  IWL_DEBUG_TE(mvm,
        "TE ended - current time %lu, estimated end %lu\n",
        jiffies, te_data->end_jiffies);

  if (te_data->vif->type == NL80211_IFTYPE_P2P_DEVICE) {
   ieee80211_remain_on_channel_expired(mvm->hw);
   iwl_mvm_roc_finished(mvm);
  }





  if (te_data->vif->type == NL80211_IFTYPE_STATION &&
      (!te_data->vif->bss_conf.assoc ||
       !te_data->vif->bss_conf.dtim_period)) {
   IWL_ERR(mvm,
    "No assocation and the time event is over already...\n");
   ieee80211_connection_loss(te_data->vif);
  }

  iwl_mvm_te_clear_data(mvm, te_data);
 } else if (le32_to_cpu(notif->action) & TE_NOTIF_HOST_EVENT_START) {
  te_data->running = 1;
  te_data->end_jiffies = jiffies +
   TU_TO_JIFFIES(te_data->duration);

  if (te_data->vif->type == NL80211_IFTYPE_P2P_DEVICE) {
   set_bit(IWL_MVM_STATUS_ROC_RUNNING, &mvm->status);
   ieee80211_ready_on_channel(mvm->hw);
  }
 } else {
  IWL_WARN(mvm, "Got TE with unknown action\n");
 }
}
