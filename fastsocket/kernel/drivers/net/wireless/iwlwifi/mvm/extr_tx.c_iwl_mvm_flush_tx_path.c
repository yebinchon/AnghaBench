
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_tx_path_flush_cmd {int flush_ctl; int queues_ctl; } ;
struct iwl_mvm {int dummy; } ;
typedef int flush_cmd ;


 int CMD_ASYNC ;
 int CMD_SYNC ;
 int DUMP_TX_FIFO_FLUSH ;
 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int TXPATH_FLUSH ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_tx_path_flush_cmd*) ;

int iwl_mvm_flush_tx_path(struct iwl_mvm *mvm, u32 tfd_msk, bool sync)
{
 int ret;
 struct iwl_tx_path_flush_cmd flush_cmd = {
  .queues_ctl = cpu_to_le32(tfd_msk),
  .flush_ctl = cpu_to_le16(DUMP_TX_FIFO_FLUSH),
 };

 u32 flags = sync ? CMD_SYNC : CMD_ASYNC;

 ret = iwl_mvm_send_cmd_pdu(mvm, TXPATH_FLUSH, flags,
       sizeof(flush_cmd), &flush_cmd);
 if (ret)
  IWL_ERR(mvm, "Failed to send flush command (%d)\n", ret);
 return ret;
}
