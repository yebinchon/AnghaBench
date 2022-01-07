
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int status; } ;
struct il_host_cmd {int flags; int id; scalar_t__ callback; } ;


 int BUG_ON (int) ;
 int CMD_ASYNC ;
 int CMD_WANT_SKB ;
 int EBUSY ;
 int IL_ERR (char*,int ,int) ;
 int S_EXIT_PENDING ;
 int il_enqueue_hcmd (struct il_priv*,struct il_host_cmd*) ;
 scalar_t__ il_generic_cmd_callback ;
 int il_get_cmd_string (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
il_send_cmd_async(struct il_priv *il, struct il_host_cmd *cmd)
{
 int ret;

 BUG_ON(!(cmd->flags & CMD_ASYNC));


 BUG_ON(cmd->flags & CMD_WANT_SKB);


 if (!cmd->callback)
  cmd->callback = il_generic_cmd_callback;

 if (test_bit(S_EXIT_PENDING, &il->status))
  return -EBUSY;

 ret = il_enqueue_hcmd(il, cmd);
 if (ret < 0) {
  IL_ERR("Error sending %s: enqueue_hcmd failed: %d\n",
         il_get_cmd_string(cmd->id), ret);
  return ret;
 }
 return 0;
}
