
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct iwl_nvm_data {int dummy; } ;
struct iwl_notification_wait {int dummy; } ;
struct iwl_mvm {int init_ucode_run; TYPE_3__* nvm_data; int trans; int notif_wait; int fw; int phy_db; int mutex; } ;
struct ieee80211_rate {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_9__ {int init_dbg; } ;
struct TYPE_8__ {int valid_rx_ant; int valid_tx_ant; TYPE_2__* bands; scalar_t__ channels; } ;
struct TYPE_7__ {int n_channels; int n_bitrates; TYPE_1__* bitrates; scalar_t__ channels; } ;
struct TYPE_6__ {int hw_value; } ;


 int ARRAY_SIZE (int const*) ;

 int ENOMEM ;
 int GFP_KERNEL ;

 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int IWL_UCODE_INIT ;
 int MVM_UCODE_CALIB_TIMEOUT ;
 int WARN_ON (int) ;
 int iwl_fw_valid_tx_ant (int ) ;
 int iwl_init_notification_wait (int *,struct iwl_notification_wait*,int const*,int ,int ,int ) ;
 int iwl_mvm_load_ucode_wait_alive (struct iwl_mvm*,int ) ;
 int iwl_nvm_check_version (TYPE_3__*,int ) ;
 int iwl_nvm_init (struct iwl_mvm*) ;
 int iwl_remove_notification (int *,struct iwl_notification_wait*) ;
 int iwl_send_bt_prio_tbl (struct iwl_mvm*) ;
 int iwl_send_phy_cfg_cmd (struct iwl_mvm*) ;
 int iwl_send_tx_ant_cfg (struct iwl_mvm*,int ) ;
 int iwl_set_default_calibrations (struct iwl_mvm*) ;
 int iwl_trans_stop_device (int ) ;
 int iwl_wait_notification (int *,struct iwl_notification_wait*,int ) ;
 int iwl_wait_phy_db_entry ;
 TYPE_4__ iwlmvm_mod_params ;
 TYPE_3__* kzalloc (int,int ) ;
 int lockdep_assert_held (int *) ;

int iwl_run_init_mvm_ucode(struct iwl_mvm *mvm, bool read_nvm)
{
 struct iwl_notification_wait calib_wait;
 static const u8 init_complete[] = {
  128,
  129
 };
 int ret;

 lockdep_assert_held(&mvm->mutex);

 if (mvm->init_ucode_run)
  return 0;

 iwl_init_notification_wait(&mvm->notif_wait,
       &calib_wait,
       init_complete,
       ARRAY_SIZE(init_complete),
       iwl_wait_phy_db_entry,
       mvm->phy_db);


 ret = iwl_mvm_load_ucode_wait_alive(mvm, IWL_UCODE_INIT);
 if (ret) {
  IWL_ERR(mvm, "Failed to start INIT ucode: %d\n", ret);
  goto error;
 }

 ret = iwl_send_bt_prio_tbl(mvm);
 if (ret)
  goto error;

 if (read_nvm) {

  ret = iwl_nvm_init(mvm);
  if (ret) {
   IWL_ERR(mvm, "Failed to read NVM: %d\n", ret);
   goto error;
  }
 }

 ret = iwl_nvm_check_version(mvm->nvm_data, mvm->trans);
 WARN_ON(ret);


 ret = iwl_send_tx_ant_cfg(mvm, iwl_fw_valid_tx_ant(mvm->fw));
 if (ret)
  goto error;


 ret = iwl_set_default_calibrations(mvm);
 if (ret)
  goto error;





 ret = iwl_send_phy_cfg_cmd(mvm);
 if (ret) {
  IWL_ERR(mvm, "Failed to run INIT calibrations: %d\n",
   ret);
  goto error;
 }





 ret = iwl_wait_notification(&mvm->notif_wait, &calib_wait,
   MVM_UCODE_CALIB_TIMEOUT);
 if (!ret)
  mvm->init_ucode_run = 1;
 goto out;

error:
 iwl_remove_notification(&mvm->notif_wait, &calib_wait);
out:
 if (!iwlmvm_mod_params.init_dbg) {
  iwl_trans_stop_device(mvm->trans);
 } else if (!mvm->nvm_data) {

  mvm->nvm_data = kzalloc(sizeof(struct iwl_nvm_data) +
     sizeof(struct ieee80211_channel) +
     sizeof(struct ieee80211_rate),
     GFP_KERNEL);
  if (!mvm->nvm_data)
   return -ENOMEM;
  mvm->nvm_data->valid_rx_ant = 1;
  mvm->nvm_data->valid_tx_ant = 1;
  mvm->nvm_data->bands[0].channels = mvm->nvm_data->channels;
  mvm->nvm_data->bands[0].n_channels = 1;
  mvm->nvm_data->bands[0].n_bitrates = 1;
  mvm->nvm_data->bands[0].bitrates =
   (void *)mvm->nvm_data->channels + 1;
  mvm->nvm_data->bands[0].bitrates->hw_value = 10;
 }

 return ret;
}
