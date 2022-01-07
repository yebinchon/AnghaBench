
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int tx_ant_cmd ;
struct iwl_tx_ant_cfg_cmd {int valid; } ;
struct iwl_mvm {int dummy; } ;


 int CMD_SYNC ;
 int IWL_DEBUG_FW (struct iwl_mvm*,char*,int ) ;
 int TX_ANT_CONFIGURATION_CMD ;
 int cpu_to_le32 (int ) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_tx_ant_cfg_cmd*) ;

__attribute__((used)) static int iwl_send_tx_ant_cfg(struct iwl_mvm *mvm, u8 valid_tx_ant)
{
 struct iwl_tx_ant_cfg_cmd tx_ant_cmd = {
  .valid = cpu_to_le32(valid_tx_ant),
 };

 IWL_DEBUG_FW(mvm, "select valid tx ant: %u\n", valid_tx_ant);
 return iwl_mvm_send_cmd_pdu(mvm, TX_ANT_CONFIGURATION_CMD, CMD_SYNC,
        sizeof(tx_ant_cmd), &tx_ant_cmd);
}
