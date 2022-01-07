
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_notification_wait {int dummy; } ;
struct iwl_mvm_alive_data {int scd_base_addr; int valid; } ;
struct iwl_mvm {int cur_ucode; int ucode_loaded; int* queue_to_mac80211; scalar_t__ transport_queue_stop; int * queue_stop_count; int trans; int notif_wait; } ;
struct fw_img {int dummy; } ;
typedef enum iwl_ucode_type { ____Placeholder_iwl_ucode_type } iwl_ucode_type ;


 int ARRAY_SIZE (int const*) ;
 int EINVAL ;
 int EIO ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 int IWL_INVALID_MAC80211_QUEUE ;
 int IWL_MAX_HW_QUEUES ;
 int IWL_MVM_CMD_QUEUE ;
 int IWL_MVM_FIRST_AGG_QUEUE ;
 int IWL_UCODE_INIT ;

 int MVM_UCODE_ALIVE_TIMEOUT ;
 int atomic_set (int *,int ) ;
 int iwl_alive_fn ;
 struct fw_img* iwl_get_ucode_image (struct iwl_mvm*,int) ;
 int iwl_init_notification_wait (int *,struct iwl_notification_wait*,int const*,int ,int ,struct iwl_mvm_alive_data*) ;
 int iwl_remove_notification (int *,struct iwl_notification_wait*) ;
 int iwl_trans_fw_alive (int ,int ) ;
 int iwl_trans_start_fw (int ,struct fw_img const*,int) ;
 int iwl_wait_notification (int *,struct iwl_notification_wait*,int ) ;

__attribute__((used)) static int iwl_mvm_load_ucode_wait_alive(struct iwl_mvm *mvm,
      enum iwl_ucode_type ucode_type)
{
 struct iwl_notification_wait alive_wait;
 struct iwl_mvm_alive_data alive_data;
 const struct fw_img *fw;
 int ret, i;
 enum iwl_ucode_type old_type = mvm->cur_ucode;
 static const u8 alive_cmd[] = { 128 };

 mvm->cur_ucode = ucode_type;
 fw = iwl_get_ucode_image(mvm, ucode_type);

 mvm->ucode_loaded = 0;

 if (!fw)
  return -EINVAL;

 iwl_init_notification_wait(&mvm->notif_wait, &alive_wait,
       alive_cmd, ARRAY_SIZE(alive_cmd),
       iwl_alive_fn, &alive_data);

 ret = iwl_trans_start_fw(mvm->trans, fw, ucode_type == IWL_UCODE_INIT);
 if (ret) {
  mvm->cur_ucode = old_type;
  iwl_remove_notification(&mvm->notif_wait, &alive_wait);
  return ret;
 }





 ret = iwl_wait_notification(&mvm->notif_wait, &alive_wait,
        MVM_UCODE_ALIVE_TIMEOUT);
 if (ret) {
  mvm->cur_ucode = old_type;
  return ret;
 }

 if (!alive_data.valid) {
  IWL_ERR(mvm, "Loaded ucode is not valid!\n");
  mvm->cur_ucode = old_type;
  return -EIO;
 }

 iwl_trans_fw_alive(mvm->trans, alive_data.scd_base_addr);
 for (i = 0; i < IWL_MAX_HW_QUEUES; i++) {
  if (i < IWL_MVM_FIRST_AGG_QUEUE && i != IWL_MVM_CMD_QUEUE)
   mvm->queue_to_mac80211[i] = i;
  else
   mvm->queue_to_mac80211[i] = IWL_INVALID_MAC80211_QUEUE;
  atomic_set(&mvm->queue_stop_count[i], 0);
 }

 mvm->transport_queue_stop = 0;

 mvm->ucode_loaded = 1;

 return 0;
}
