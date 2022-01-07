
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int time_cmd ;
struct iwl_time_event_cmd {void* id; void* id_and_color; void* action; } ;
struct iwl_mvm_vif {int color; int id; } ;
struct iwl_mvm_time_event_data {scalar_t__ uid; scalar_t__ id; } ;
struct iwl_mvm {int time_event_lock; } ;


 int CMD_SYNC ;
 scalar_t__ FW_CMD_ID_AND_COLOR (int ,int ) ;
 scalar_t__ FW_CTXT_ACTION_REMOVE ;
 int IWL_DEBUG_TE (struct iwl_mvm*,char*,scalar_t__) ;
 scalar_t__ TE_MAX ;
 int TIME_EVENT_CMD ;
 scalar_t__ WARN_ON (int) ;
 void* cpu_to_le32 (scalar_t__) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_time_event_cmd*) ;
 int iwl_mvm_te_clear_data (struct iwl_mvm*,struct iwl_mvm_time_event_data*) ;
 scalar_t__ le32_to_cpu (void*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iwl_mvm_remove_time_event(struct iwl_mvm *mvm,
          struct iwl_mvm_vif *mvmvif,
          struct iwl_mvm_time_event_data *te_data)
{
 struct iwl_time_event_cmd time_cmd = {};
 u32 id, uid;
 int ret;





 spin_lock_bh(&mvm->time_event_lock);


 uid = te_data->uid;
 id = te_data->id;




 iwl_mvm_te_clear_data(mvm, te_data);
 spin_unlock_bh(&mvm->time_event_lock);






 if (id == TE_MAX) {
  IWL_DEBUG_TE(mvm, "TE 0x%x has already ended\n", uid);
  return;
 }


 time_cmd.id = cpu_to_le32(uid);
 time_cmd.action = cpu_to_le32(FW_CTXT_ACTION_REMOVE);
 time_cmd.id_and_color =
  cpu_to_le32(FW_CMD_ID_AND_COLOR(mvmvif->id, mvmvif->color));

 IWL_DEBUG_TE(mvm, "Removing TE 0x%x\n", le32_to_cpu(time_cmd.id));
 ret = iwl_mvm_send_cmd_pdu(mvm, TIME_EVENT_CMD, CMD_SYNC,
       sizeof(time_cmd), &time_cmd);
 if (WARN_ON(ret))
  return;
}
