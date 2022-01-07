
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {int status; } ;
struct iwl_trans {int dummy; } ;
struct iwl_host_cmd {int flags; int id; } ;


 int CMD_ASYNC ;
 int EIO ;
 int ERFKILL ;
 int IWL_DEBUG_RF_KILL (struct iwl_trans*,char*,int ) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int STATUS_FW_ERROR ;
 int STATUS_RFKILL ;
 int iwl_pcie_send_hcmd_async (struct iwl_trans*,struct iwl_host_cmd*) ;
 int iwl_pcie_send_hcmd_sync (struct iwl_trans*,struct iwl_host_cmd*) ;
 scalar_t__ test_bit (int ,int *) ;

int iwl_trans_pcie_send_hcmd(struct iwl_trans *trans, struct iwl_host_cmd *cmd)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 if (test_bit(STATUS_FW_ERROR, &trans_pcie->status))
  return -EIO;

 if (test_bit(STATUS_RFKILL, &trans_pcie->status)) {
  IWL_DEBUG_RF_KILL(trans, "Dropping CMD 0x%x: RF KILL\n",
      cmd->id);
  return -ERFKILL;
 }

 if (cmd->flags & CMD_ASYNC)
  return iwl_pcie_send_hcmd_async(trans, cmd);


 return iwl_pcie_send_hcmd_sync(trans, cmd);
}
