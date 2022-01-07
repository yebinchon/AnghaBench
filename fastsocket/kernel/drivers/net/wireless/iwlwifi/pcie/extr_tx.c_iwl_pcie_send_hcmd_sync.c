
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_queue {int write_ptr; int read_ptr; } ;
struct iwl_txq {TYPE_2__* entries; struct iwl_queue q; } ;
struct iwl_trans_pcie {size_t cmd_queue; struct iwl_txq* txq; int status; int wait_command_queue; } ;
struct iwl_trans {int dummy; } ;
struct iwl_host_cmd {int flags; int * resp_pkt; int id; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ meta; } ;


 int CMD_WANT_SKB ;
 int EIO ;
 int ERFKILL ;
 int ETIMEDOUT ;
 int HOST_COMPLETE_TIMEOUT ;
 int IWL_DEBUG_INFO (struct iwl_trans*,char*,int ) ;
 int IWL_DEBUG_RF_KILL (struct iwl_trans*,char*) ;
 int IWL_ERR (struct iwl_trans*,char*,int ,...) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int STATUS_FW_ERROR ;
 int STATUS_HCMD_ACTIVE ;
 int STATUS_RFKILL ;
 scalar_t__ WARN_ON (int ) ;
 int clear_bit (int ,int *) ;
 int get_cmd_string (struct iwl_trans_pcie*,int ) ;
 int iwl_free_resp (struct iwl_host_cmd*) ;
 int iwl_pcie_enqueue_hcmd (struct iwl_trans*,struct iwl_host_cmd*) ;
 int jiffies_to_msecs (int ) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int iwl_pcie_send_hcmd_sync(struct iwl_trans *trans,
       struct iwl_host_cmd *cmd)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 int cmd_idx;
 int ret;

 IWL_DEBUG_INFO(trans, "Attempting to send sync command %s\n",
         get_cmd_string(trans_pcie, cmd->id));

 if (WARN_ON(test_and_set_bit(STATUS_HCMD_ACTIVE,
         &trans_pcie->status))) {
  IWL_ERR(trans, "Command %s: a command is already active!\n",
   get_cmd_string(trans_pcie, cmd->id));
  return -EIO;
 }

 IWL_DEBUG_INFO(trans, "Setting HCMD_ACTIVE for command %s\n",
         get_cmd_string(trans_pcie, cmd->id));

 cmd_idx = iwl_pcie_enqueue_hcmd(trans, cmd);
 if (cmd_idx < 0) {
  ret = cmd_idx;
  clear_bit(STATUS_HCMD_ACTIVE, &trans_pcie->status);
  IWL_ERR(trans,
   "Error sending %s: enqueue_hcmd failed: %d\n",
   get_cmd_string(trans_pcie, cmd->id), ret);
  return ret;
 }

 ret = wait_event_timeout(trans_pcie->wait_command_queue,
     !test_bit(STATUS_HCMD_ACTIVE,
        &trans_pcie->status),
     HOST_COMPLETE_TIMEOUT);
 if (!ret) {
  if (test_bit(STATUS_HCMD_ACTIVE, &trans_pcie->status)) {
   struct iwl_txq *txq =
    &trans_pcie->txq[trans_pcie->cmd_queue];
   struct iwl_queue *q = &txq->q;

   IWL_ERR(trans,
    "Error sending %s: time out after %dms.\n",
    get_cmd_string(trans_pcie, cmd->id),
    jiffies_to_msecs(HOST_COMPLETE_TIMEOUT));

   IWL_ERR(trans,
    "Current CMD queue read_ptr %d write_ptr %d\n",
    q->read_ptr, q->write_ptr);

   clear_bit(STATUS_HCMD_ACTIVE, &trans_pcie->status);
   IWL_DEBUG_INFO(trans,
           "Clearing HCMD_ACTIVE for command %s\n",
           get_cmd_string(trans_pcie, cmd->id));
   ret = -ETIMEDOUT;
   goto cancel;
  }
 }

 if (test_bit(STATUS_FW_ERROR, &trans_pcie->status)) {
  IWL_ERR(trans, "FW error in SYNC CMD %s\n",
   get_cmd_string(trans_pcie, cmd->id));
  ret = -EIO;
  goto cancel;
 }

 if (test_bit(STATUS_RFKILL, &trans_pcie->status)) {
  IWL_DEBUG_RF_KILL(trans, "RFKILL in SYNC CMD... no rsp\n");
  ret = -ERFKILL;
  goto cancel;
 }

 if ((cmd->flags & CMD_WANT_SKB) && !cmd->resp_pkt) {
  IWL_ERR(trans, "Error: Response NULL in '%s'\n",
   get_cmd_string(trans_pcie, cmd->id));
  ret = -EIO;
  goto cancel;
 }

 return 0;

cancel:
 if (cmd->flags & CMD_WANT_SKB) {






  trans_pcie->txq[trans_pcie->cmd_queue].
   entries[cmd_idx].meta.flags &= ~CMD_WANT_SKB;
 }

 if (cmd->resp_pkt) {
  iwl_free_resp(cmd);
  cmd->resp_pkt = ((void*)0);
 }

 return ret;
}
