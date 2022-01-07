
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int cur_cmd_retcode; struct cmd_ctrl_node* cur_cmd; } ;
struct cmd_ctrl_node {int result; int cmdwaitqwoken; scalar_t__ callback; int cmdwait_q; } ;


 int __lbs_cleanup_and_insert_cmd (struct lbs_private*,struct cmd_ctrl_node*) ;
 scalar_t__ lbs_cmd_async_callback ;
 int wake_up_interruptible (int *) ;

void lbs_complete_command(struct lbs_private *priv, struct cmd_ctrl_node *cmd,
     int result)
{
 if (cmd == priv->cur_cmd)
  priv->cur_cmd_retcode = result;

 cmd->result = result;
 cmd->cmdwaitqwoken = 1;
 wake_up_interruptible(&cmd->cmdwait_q);

 if (!cmd->callback || cmd->callback == lbs_cmd_async_callback)
  __lbs_cleanup_and_insert_cmd(priv, cmd);
 priv->cur_cmd = ((void*)0);
}
