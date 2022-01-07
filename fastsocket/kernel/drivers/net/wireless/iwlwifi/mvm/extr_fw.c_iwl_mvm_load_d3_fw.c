
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int trans; int * fw_id_to_mac_id; int phy_db; int fw; int mutex; } ;


 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int IWL_MVM_STATION_COUNT ;
 int IWL_UCODE_WOWLAN ;
 int RCU_INIT_POINTER (int ,int *) ;
 int iwl_fw_valid_tx_ant (int ) ;
 int iwl_mvm_add_aux_sta (struct iwl_mvm*) ;
 int iwl_mvm_load_ucode_wait_alive (struct iwl_mvm*,int ) ;
 int iwl_send_phy_cfg_cmd (struct iwl_mvm*) ;
 int iwl_send_phy_db_data (int ) ;
 int iwl_send_tx_ant_cfg (struct iwl_mvm*,int ) ;
 int iwl_trans_start_hw (int ) ;
 int iwl_trans_stop_device (int ) ;
 int lockdep_assert_held (int *) ;

int iwl_mvm_load_d3_fw(struct iwl_mvm *mvm)
{
 int ret, i;

 lockdep_assert_held(&mvm->mutex);

 ret = iwl_trans_start_hw(mvm->trans);
 if (ret)
  return ret;

 ret = iwl_mvm_load_ucode_wait_alive(mvm, IWL_UCODE_WOWLAN);
 if (ret) {
  IWL_ERR(mvm, "Failed to start WoWLAN firmware: %d\n", ret);
  goto error;
 }

 ret = iwl_send_tx_ant_cfg(mvm, iwl_fw_valid_tx_ant(mvm->fw));
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

 return 0;
 error:
 iwl_trans_stop_device(mvm->trans);
 return ret;
}
