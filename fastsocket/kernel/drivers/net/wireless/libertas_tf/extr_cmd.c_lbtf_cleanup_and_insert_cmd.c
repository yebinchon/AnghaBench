
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbtf_private {int driver_lock; } ;
struct cmd_ctrl_node {int dummy; } ;


 int __lbtf_cleanup_and_insert_cmd (struct lbtf_private*,struct cmd_ctrl_node*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void lbtf_cleanup_and_insert_cmd(struct lbtf_private *priv,
 struct cmd_ctrl_node *ptempcmd)
{
 unsigned long flags;

 spin_lock_irqsave(&priv->driver_lock, flags);
 __lbtf_cleanup_and_insert_cmd(priv, ptempcmd);
 spin_unlock_irqrestore(&priv->driver_lock, flags);
}
