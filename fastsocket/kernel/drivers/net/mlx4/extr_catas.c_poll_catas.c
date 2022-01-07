
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer; int list; int map; } ;
struct mlx4_priv {TYPE_1__ catas_err; } ;
struct mlx4_dev {int pdev; } ;


 scalar_t__ MLX4_CATAS_POLL_INTERVAL ;
 int MLX4_DEV_EVENT_CATASTROPHIC_ERROR ;
 int catas_list ;
 int catas_lock ;
 int catas_work ;
 int dump_err_buf (struct mlx4_dev*) ;
 scalar_t__ internal_err_reset ;
 scalar_t__ jiffies ;
 int list_add (int *,int *) ;
 int mlx4_dispatch_event (struct mlx4_dev*,int ,int ) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_wq ;
 int mod_timer (int *,int ) ;
 scalar_t__ pci_channel_offline (int ) ;
 int queue_work (int ,int *) ;
 scalar_t__ readl (int ) ;
 int round_jiffies (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void poll_catas(unsigned long dev_ptr)
{
 struct mlx4_dev *dev = (struct mlx4_dev *) dev_ptr;
 struct mlx4_priv *priv = mlx4_priv(dev);

 if (readl(priv->catas_err.map)) {

  if (pci_channel_offline(dev->pdev))
   mod_timer(&priv->catas_err.timer,
      round_jiffies(jiffies + MLX4_CATAS_POLL_INTERVAL));
  else {
   dump_err_buf(dev);
   mlx4_dispatch_event(dev, MLX4_DEV_EVENT_CATASTROPHIC_ERROR, 0);

   if (internal_err_reset) {
    spin_lock(&catas_lock);
    list_add(&priv->catas_err.list, &catas_list);
    spin_unlock(&catas_lock);

    queue_work(mlx4_wq, &catas_work);
   }
  }
 } else
  mod_timer(&priv->catas_err.timer,
     round_jiffies(jiffies + MLX4_CATAS_POLL_INTERVAL));
}
