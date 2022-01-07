
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ipw_priv {int status; size_t cmdlog_pos; size_t cmdlog_len; TYPE_2__* cmdlog; int lock; int wait_command_queue; } ;
struct host_cmd {scalar_t__ cmd; int len; scalar_t__ param; } ;
struct TYPE_3__ {scalar_t__ cmd; int param; int len; } ;
struct TYPE_4__ {int retcode; TYPE_1__ cmd; void* jiffies; } ;


 int EAGAIN ;
 int EIO ;
 unsigned long HOST_COMPLETE_TIMEOUT ;
 scalar_t__ IPW_CMD_WEP_KEY ;
 int IPW_DEBUG_HC (char*,...) ;
 int IPW_DL_HOST_COMMAND ;
 int IPW_ERROR (char*,int ,...) ;
 int STATUS_HCMD_ACTIVE ;
 int STATUS_RF_KILL_HW ;
 int get_cmd_string (scalar_t__) ;
 int ipw_queue_tx_hcmd (struct ipw_priv*,scalar_t__,scalar_t__,int ,int ) ;
 void* jiffies ;
 int memcpy (int ,scalar_t__,int ) ;
 int printk_buf (int ,int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int wait_event_interruptible_timeout (int ,int,unsigned long) ;

__attribute__((used)) static int __ipw_send_cmd(struct ipw_priv *priv, struct host_cmd *cmd)
{
 int rc = 0;
 unsigned long flags;
 unsigned long now, end;

 spin_lock_irqsave(&priv->lock, flags);
 if (priv->status & STATUS_HCMD_ACTIVE) {
  IPW_ERROR("Failed to send %s: Already sending a command.\n",
     get_cmd_string(cmd->cmd));
  spin_unlock_irqrestore(&priv->lock, flags);
  return -EAGAIN;
 }

 priv->status |= STATUS_HCMD_ACTIVE;

 if (priv->cmdlog) {
  priv->cmdlog[priv->cmdlog_pos].jiffies = jiffies;
  priv->cmdlog[priv->cmdlog_pos].cmd.cmd = cmd->cmd;
  priv->cmdlog[priv->cmdlog_pos].cmd.len = cmd->len;
  memcpy(priv->cmdlog[priv->cmdlog_pos].cmd.param, cmd->param,
         cmd->len);
  priv->cmdlog[priv->cmdlog_pos].retcode = -1;
 }

 IPW_DEBUG_HC("%s command (#%d) %d bytes: 0x%08X\n",
       get_cmd_string(cmd->cmd), cmd->cmd, cmd->len,
       priv->status);


 if (cmd->cmd == IPW_CMD_WEP_KEY)
  IPW_DEBUG_HC("WEP_KEY command masked out for secure.\n");
 else

  printk_buf(IPW_DL_HOST_COMMAND, (u8 *) cmd->param, cmd->len);

 rc = ipw_queue_tx_hcmd(priv, cmd->cmd, cmd->param, cmd->len, 0);
 if (rc) {
  priv->status &= ~STATUS_HCMD_ACTIVE;
  IPW_ERROR("Failed to send %s: Reason %d\n",
     get_cmd_string(cmd->cmd), rc);
  spin_unlock_irqrestore(&priv->lock, flags);
  goto exit;
 }
 spin_unlock_irqrestore(&priv->lock, flags);

 now = jiffies;
 end = now + HOST_COMPLETE_TIMEOUT;
again:
 rc = wait_event_interruptible_timeout(priv->wait_command_queue,
           !(priv->
      status & STATUS_HCMD_ACTIVE),
           end - now);
 if (rc < 0) {
  now = jiffies;
  if (time_before(now, end))
   goto again;
  rc = 0;
 }

 if (rc == 0) {
  spin_lock_irqsave(&priv->lock, flags);
  if (priv->status & STATUS_HCMD_ACTIVE) {
   IPW_ERROR("Failed to send %s: Command timed out.\n",
      get_cmd_string(cmd->cmd));
   priv->status &= ~STATUS_HCMD_ACTIVE;
   spin_unlock_irqrestore(&priv->lock, flags);
   rc = -EIO;
   goto exit;
  }
  spin_unlock_irqrestore(&priv->lock, flags);
 } else
  rc = 0;

 if (priv->status & STATUS_RF_KILL_HW) {
  IPW_ERROR("Failed to send %s: Aborted due to RF kill switch.\n",
     get_cmd_string(cmd->cmd));
  rc = -EIO;
  goto exit;
 }

      exit:
 if (priv->cmdlog) {
  priv->cmdlog[priv->cmdlog_pos++].retcode = rc;
  priv->cmdlog_pos %= priv->cmdlog_len;
 }
 return rc;
}
