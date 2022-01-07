
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct lbs_private {int driver_lock; } ;
struct cmd_header {int dummy; } ;
struct cmd_ctrl_node {int result; int cmdwaitqwoken; int cmdwait_q; } ;


 scalar_t__ IS_ERR (struct cmd_ctrl_node*) ;
 int LBS_DEB_HOST ;
 int PTR_ERR (struct cmd_ctrl_node*) ;
 int __lbs_cleanup_and_insert_cmd (struct lbs_private*,struct cmd_ctrl_node*) ;
 struct cmd_ctrl_node* __lbs_cmd_async (struct lbs_private*,int ,struct cmd_header*,int,int (*) (struct lbs_private*,unsigned long,struct cmd_header*),unsigned long) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_pr_info (char*,int ,int) ;
 int might_sleep () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_interruptible (int ,int ) ;

int __lbs_cmd(struct lbs_private *priv, uint16_t command,
       struct cmd_header *in_cmd, int in_cmd_size,
       int (*callback)(struct lbs_private *, unsigned long, struct cmd_header *),
       unsigned long callback_arg)
{
 struct cmd_ctrl_node *cmdnode;
 unsigned long flags;
 int ret = 0;

 lbs_deb_enter(LBS_DEB_HOST);

 cmdnode = __lbs_cmd_async(priv, command, in_cmd, in_cmd_size,
      callback, callback_arg);
 if (IS_ERR(cmdnode)) {
  ret = PTR_ERR(cmdnode);
  goto done;
 }

 might_sleep();
 wait_event_interruptible(cmdnode->cmdwait_q, cmdnode->cmdwaitqwoken);

 spin_lock_irqsave(&priv->driver_lock, flags);
 ret = cmdnode->result;
 if (ret)
  lbs_pr_info("PREP_CMD: command 0x%04x failed: %d\n",
       command, ret);

 __lbs_cleanup_and_insert_cmd(priv, cmdnode);
 spin_unlock_irqrestore(&priv->driver_lock, flags);

done:
 lbs_deb_leave_args(LBS_DEB_HOST, "ret %d", ret);
 return ret;
}
