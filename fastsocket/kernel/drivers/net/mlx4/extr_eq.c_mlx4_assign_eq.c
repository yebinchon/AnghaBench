
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned long long pool_bm; int pool_lock; } ;
struct TYPE_6__ {TYPE_4__* eq; int * irq_names; } ;
struct mlx4_priv {TYPE_2__ msix_ctl; TYPE_1__ eq_table; } ;
struct TYPE_8__ {int comp_pool; int num_comp_vectors; } ;
struct mlx4_dev {TYPE_3__ caps; } ;
struct cpu_rmap {int dummy; } ;
struct TYPE_9__ {int irq; } ;


 int ENOSPC ;
 int MLX4_IRQNAME_SIZE ;
 int eq_set_ci (TYPE_4__*,int) ;
 int irq_cpu_rmap_add (struct cpu_rmap*,int ) ;
 int mlx4_msi_x_interrupt ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_warn (struct mlx4_dev*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int request_irq (int ,int ,int ,int *,TYPE_4__*) ;
 int snprintf (int *,int,char*,char*) ;

int mlx4_assign_eq(struct mlx4_dev *dev, char *name, struct cpu_rmap *rmap,
     int *vector)
{

 struct mlx4_priv *priv = mlx4_priv(dev);
 int vec = 0, err = 0, i;

 mutex_lock(&priv->msix_ctl.pool_lock);
 for (i = 0; !vec && i < dev->caps.comp_pool; i++) {
  if (~priv->msix_ctl.pool_bm & 1ULL << i) {
   priv->msix_ctl.pool_bm |= 1ULL << i;
   vec = dev->caps.num_comp_vectors + 1 + i;
   snprintf(priv->eq_table.irq_names +
     vec * MLX4_IRQNAME_SIZE,
     MLX4_IRQNAME_SIZE, "%s", name);
   err = request_irq(priv->eq_table.eq[vec].irq,
       mlx4_msi_x_interrupt, 0,
       &priv->eq_table.irq_names[vec<<5],
       priv->eq_table.eq + vec);
   if (err) {

    priv->msix_ctl.pool_bm ^= 1 << i;
    vec = 0;
    continue;

   }
   eq_set_ci(&priv->eq_table.eq[vec], 1);
  }
 }
 mutex_unlock(&priv->msix_ctl.pool_lock);

 if (vec) {
  *vector = vec;
 } else {
  *vector = 0;
  err = (i == dev->caps.comp_pool) ? -ENOSPC : err;
 }
 return err;
}
