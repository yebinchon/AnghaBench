
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; scalar_t__ map; int timer; } ;
struct mlx4_priv {TYPE_1__ catas_err; } ;
struct mlx4_dev {int dummy; } ;


 int catas_lock ;
 int del_timer_sync (int *) ;
 int iounmap (scalar_t__) ;
 int list_del (int *) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void mlx4_stop_catas_poll(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);

 del_timer_sync(&priv->catas_err.timer);

 if (priv->catas_err.map)
  iounmap(priv->catas_err.map);

 spin_lock_irq(&catas_lock);
 list_del(&priv->catas_err.list);
 spin_unlock_irq(&catas_lock);
}
