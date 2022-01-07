
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lbs_private {int cmd_timed_out; int driver_lock; int waitq; TYPE_2__* cur_cmd; } ;
struct TYPE_4__ {TYPE_1__* cmdbuf; } ;
struct TYPE_3__ {int command; } ;


 int LBS_DEB_CMD ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int lbs_pr_info (char*,int ) ;
 int le16_to_cpu (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void command_timer_fn(unsigned long data)
{
 struct lbs_private *priv = (struct lbs_private *)data;
 unsigned long flags;

 lbs_deb_enter(LBS_DEB_CMD);
 spin_lock_irqsave(&priv->driver_lock, flags);

 if (!priv->cur_cmd)
  goto out;

 lbs_pr_info("command 0x%04x timed out\n",
  le16_to_cpu(priv->cur_cmd->cmdbuf->command));

 priv->cmd_timed_out = 1;
 wake_up_interruptible(&priv->waitq);
out:
 spin_unlock_irqrestore(&priv->driver_lock, flags);
 lbs_deb_leave(LBS_DEB_CMD);
}
