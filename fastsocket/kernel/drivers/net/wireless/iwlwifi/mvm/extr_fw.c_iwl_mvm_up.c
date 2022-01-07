
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {int trans; int * fw_id_to_mac_id; int phy_db; int fw; int init_ucode_run; int mutex; } ;
struct TYPE_2__ {scalar_t__ init_dbg; } ;


 int IWL_DEBUG_INFO (struct iwl_mvm*,char*) ;
 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int IWL_MVM_STATION_COUNT ;
 int IWL_UCODE_REGULAR ;
 int RCU_INIT_POINTER (int ,int *) ;
 int iwl_fw_valid_tx_ant (int ) ;
 int iwl_mvm_add_aux_sta (struct iwl_mvm*) ;
 int iwl_mvm_load_ucode_wait_alive (struct iwl_mvm*,int ) ;
 int iwl_run_init_mvm_ucode (struct iwl_mvm*,int) ;
 int iwl_send_bt_init_conf (struct iwl_mvm*) ;
 int iwl_send_bt_prio_tbl (struct iwl_mvm*) ;
 int iwl_send_phy_cfg_cmd (struct iwl_mvm*) ;
 int iwl_send_phy_db_data (int ) ;
 int iwl_send_tx_ant_cfg (struct iwl_mvm*,int ) ;
 int iwl_trans_start_hw (int ) ;
 int iwl_trans_stop_device (int ) ;
 TYPE_1__ iwlmvm_mod_params ;
 int lockdep_assert_held (int *) ;

int iwl_mvm_up(struct iwl_mvm *mvm)
{
 int ret, i;

 lockdep_assert_held(&mvm->mutex);

 ret = iwl_trans_start_hw(mvm->trans);
 if (ret)
  return ret;


 if (!mvm->init_ucode_run) {
  ret = iwl_run_init_mvm_ucode(mvm, 0);
  if (ret && !iwlmvm_mod_params.init_dbg) {
   IWL_ERR(mvm, "Failed to run INIT ucode: %d\n", ret);
   goto error;
  }
 }

 if (iwlmvm_mod_params.init_dbg)
  return 0;

 ret = iwl_mvm_load_ucode_wait_alive(mvm, IWL_UCODE_REGULAR);
 if (ret) {
  IWL_ERR(mvm, "Failed to start RT ucode: %d\n", ret);
  goto error;
 }

 ret = iwl_send_tx_ant_cfg(mvm, iwl_fw_valid_tx_ant(mvm->fw));
 if (ret)
  goto error;

 ret = iwl_send_bt_prio_tbl(mvm);
 if (ret)
  goto error;

 ret = iwl_send_bt_init_conf(mvm);
 if (ret)
  goto error;


 ret = iwl_send_phy_db_data(mvm->phy_db);
 if (ret)
  goto error;

 ret = iwl_send_phy_cfg_cmd(mvm);
 if (ret)
  goto error;


 for (i = 0; i < IWL_MVM_STATION_COUNT; i++)
  RCU_INIT_POINTER(mvm->fw_id_to_mac_id[i], ((void*)0));


 ret = iwl_mvm_add_aux_sta(mvm);
 if (ret)
  goto error;

 IWL_DEBUG_INFO(mvm, "RT uCode started.\n");

 return 0;
 error:
 iwl_trans_stop_device(mvm->trans);
 return ret;
}
