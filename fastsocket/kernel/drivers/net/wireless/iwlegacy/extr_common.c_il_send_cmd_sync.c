
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct il_priv {size_t cmd_queue; TYPE_2__* txq; int status; int wait_command_queue; int mutex; } ;
struct il_host_cmd {int flags; int callback; scalar_t__ reply_page; int id; } ;
struct TYPE_4__ {TYPE_1__* meta; } ;
struct TYPE_3__ {int flags; } ;


 int BUG_ON (int) ;
 int CMD_ASYNC ;
 int CMD_WANT_SKB ;
 int D_INFO (char*,int ) ;
 int ECANCELED ;
 int EIO ;
 int ETIMEDOUT ;
 int HOST_COMPLETE_TIMEOUT ;
 int IL_ERR (char*,int ,...) ;
 int S_FW_ERROR ;
 int S_HCMD_ACTIVE ;
 int S_RFKILL ;
 int clear_bit (int ,int *) ;
 int il_enqueue_hcmd (struct il_priv*,struct il_host_cmd*) ;
 int il_free_pages (struct il_priv*,scalar_t__) ;
 int il_get_cmd_string (int ) ;
 int jiffies_to_msecs (int ) ;
 int lockdep_assert_held (int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event_timeout (int ,int,int ) ;

int
il_send_cmd_sync(struct il_priv *il, struct il_host_cmd *cmd)
{
 int cmd_idx;
 int ret;

 lockdep_assert_held(&il->mutex);

 BUG_ON(cmd->flags & CMD_ASYNC);


 BUG_ON(cmd->callback);

 D_INFO("Attempting to send sync command %s\n",
        il_get_cmd_string(cmd->id));

 set_bit(S_HCMD_ACTIVE, &il->status);
 D_INFO("Setting HCMD_ACTIVE for command %s\n",
        il_get_cmd_string(cmd->id));

 cmd_idx = il_enqueue_hcmd(il, cmd);
 if (cmd_idx < 0) {
  ret = cmd_idx;
  IL_ERR("Error sending %s: enqueue_hcmd failed: %d\n",
         il_get_cmd_string(cmd->id), ret);
  goto out;
 }

 ret = wait_event_timeout(il->wait_command_queue,
     !test_bit(S_HCMD_ACTIVE, &il->status),
     HOST_COMPLETE_TIMEOUT);
 if (!ret) {
  if (test_bit(S_HCMD_ACTIVE, &il->status)) {
   IL_ERR("Error sending %s: time out after %dms.\n",
          il_get_cmd_string(cmd->id),
          jiffies_to_msecs(HOST_COMPLETE_TIMEOUT));

   clear_bit(S_HCMD_ACTIVE, &il->status);
   D_INFO("Clearing HCMD_ACTIVE for command %s\n",
          il_get_cmd_string(cmd->id));
   ret = -ETIMEDOUT;
   goto cancel;
  }
 }

 if (test_bit(S_RFKILL, &il->status)) {
  IL_ERR("Command %s aborted: RF KILL Switch\n",
         il_get_cmd_string(cmd->id));
  ret = -ECANCELED;
  goto fail;
 }
 if (test_bit(S_FW_ERROR, &il->status)) {
  IL_ERR("Command %s failed: FW Error\n",
         il_get_cmd_string(cmd->id));
  ret = -EIO;
  goto fail;
 }
 if ((cmd->flags & CMD_WANT_SKB) && !cmd->reply_page) {
  IL_ERR("Error: Response NULL in '%s'\n",
         il_get_cmd_string(cmd->id));
  ret = -EIO;
  goto cancel;
 }

 ret = 0;
 goto out;

cancel:
 if (cmd->flags & CMD_WANT_SKB) {






  il->txq[il->cmd_queue].meta[cmd_idx].flags &= ~CMD_WANT_SKB;
 }
fail:
 if (cmd->reply_page) {
  il_free_pages(il, cmd->reply_page);
  cmd->reply_page = 0;
 }
out:
 return ret;
}
