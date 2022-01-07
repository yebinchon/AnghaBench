
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int driver_lock; } ;
struct cmd_ctrl_node {int dummy; } ;


 int __lbs_cleanup_and_insert_cmd (struct lbs_private*,struct cmd_ctrl_node*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void lbs_cleanup_and_insert_cmd(struct lbs_private *priv,
 struct cmd_ctrl_node *ptempcmd)
{
 unsigned long flags;

 spin_lock_irqsave(&priv->driver_lock, flags);
 __lbs_cleanup_and_insert_cmd(priv, ptempcmd);
 spin_unlock_irqrestore(&priv->driver_lock, flags);
}
