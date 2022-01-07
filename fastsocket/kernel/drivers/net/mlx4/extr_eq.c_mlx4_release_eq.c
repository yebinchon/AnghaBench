
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {unsigned long long pool_bm; int pool_lock; } ;
struct TYPE_6__ {TYPE_4__* eq; } ;
struct mlx4_priv {TYPE_3__ msix_ctl; TYPE_2__ eq_table; } ;
struct TYPE_5__ {int num_comp_vectors; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct TYPE_8__ {int irq; } ;


 int free_irq (int ,TYPE_4__*) ;
 scalar_t__ likely (int) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mlx4_release_eq(struct mlx4_dev *dev, int vec)
{
 struct mlx4_priv *priv = mlx4_priv(dev);

 int i = vec - dev->caps.num_comp_vectors - 1;

 if (likely(i >= 0)) {


  mutex_lock(&priv->msix_ctl.pool_lock);
  if (priv->msix_ctl.pool_bm & 1ULL << i) {
   free_irq(priv->eq_table.eq[vec].irq,
     &priv->eq_table.eq[vec]);
   priv->msix_ctl.pool_bm &= ~(1ULL << i);
  }
  mutex_unlock(&priv->msix_ctl.pool_lock);
 }

}
