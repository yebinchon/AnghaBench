
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_cmds; int token_mask; int use_events; int poll_sem; int context_lock; int event_sem; scalar_t__ free_head; TYPE_2__* context; } ;
struct mlx4_priv {TYPE_1__ cmd; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_context {int dummy; } ;
struct TYPE_4__ {int token; int next; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int down (int *) ;
 TYPE_2__* kmalloc (int,int ) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int sema_init (int *,int) ;
 int spin_lock_init (int *) ;

int mlx4_cmd_use_events(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 int i;
 int err = 0;

 priv->cmd.context = kmalloc(priv->cmd.max_cmds *
       sizeof (struct mlx4_cmd_context),
       GFP_KERNEL);
 if (!priv->cmd.context)
  return -ENOMEM;

 for (i = 0; i < priv->cmd.max_cmds; ++i) {
  priv->cmd.context[i].token = i;
  priv->cmd.context[i].next = i + 1;
 }

 priv->cmd.context[priv->cmd.max_cmds - 1].next = -1;
 priv->cmd.free_head = 0;

 sema_init(&priv->cmd.event_sem, priv->cmd.max_cmds);
 spin_lock_init(&priv->cmd.context_lock);

 for (priv->cmd.token_mask = 1;
      priv->cmd.token_mask < priv->cmd.max_cmds;
      priv->cmd.token_mask <<= 1)
  ;
 --priv->cmd.token_mask;

 down(&priv->cmd.poll_sem);
 priv->cmd.use_events = 1;

 return err;
}
