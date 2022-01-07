
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct iwl_mvm_sta {int bt_reduced_txpower; } ;
struct iwl_mvm {int mutex; int * fw_id_to_mac_id; } ;
struct iwl_bt_coex_cmd {size_t bt_reduced_tx_power; int valid_bit_msk; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
typedef int cmd ;


 int BT_CONFIG ;
 size_t BT_REDUCED_TX_POWER_BIT ;
 int BT_VALID_REDUCED_TX_POWER ;
 int CMD_ASYNC ;
 int IWL_DEBUG_COEX (struct iwl_mvm*,char*,char*,size_t) ;
 size_t IWL_MVM_STATION_COUNT ;
 int cpu_to_le16 (int ) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_bt_coex_cmd*) ;
 int lockdep_is_held (int *) ;
 struct ieee80211_sta* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static int iwl_mvm_bt_coex_reduced_txp(struct iwl_mvm *mvm, u8 sta_id,
           bool enable)
{
 struct iwl_bt_coex_cmd cmd = {
  .valid_bit_msk = cpu_to_le16(BT_VALID_REDUCED_TX_POWER),
  .bt_reduced_tx_power = sta_id,
 };
 struct ieee80211_sta *sta;
 struct iwl_mvm_sta *mvmsta;


 if (sta_id == IWL_MVM_STATION_COUNT)
  return 0;

 sta = rcu_dereference_protected(mvm->fw_id_to_mac_id[sta_id],
     lockdep_is_held(&mvm->mutex));
 mvmsta = (void *)sta->drv_priv;


 if (mvmsta->bt_reduced_txpower == enable)
  return 0;

 if (enable)
  cmd.bt_reduced_tx_power |= BT_REDUCED_TX_POWER_BIT;

 IWL_DEBUG_COEX(mvm, "%sable reduced Tx Power for sta %d\n",
         enable ? "en" : "dis", sta_id);

 mvmsta->bt_reduced_txpower = enable;


 return iwl_mvm_send_cmd_pdu(mvm, BT_CONFIG, CMD_ASYNC,
        sizeof(cmd), &cmd);
}
