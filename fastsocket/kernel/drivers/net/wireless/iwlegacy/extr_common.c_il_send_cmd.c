
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int dummy; } ;
struct il_host_cmd {int flags; } ;


 int CMD_ASYNC ;
 int il_send_cmd_async (struct il_priv*,struct il_host_cmd*) ;
 int il_send_cmd_sync (struct il_priv*,struct il_host_cmd*) ;

int
il_send_cmd(struct il_priv *il, struct il_host_cmd *cmd)
{
 if (cmd->flags & CMD_ASYNC)
  return il_send_cmd_async(il, cmd);

 return il_send_cmd_sync(il, cmd);
}
