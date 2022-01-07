
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* eq; } ;
struct mlx4_cq_table {int lock; int tree; } ;
struct mlx4_priv {TYPE_2__ eq_table; struct mlx4_cq_table cq_table; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cq {size_t vector; int cqn; int free; int refcount; } ;
struct TYPE_3__ {int irq; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;
 int mlx4_HW2SW_CQ (struct mlx4_dev*,int *,int ) ;
 int mlx4_cq_free_icm (struct mlx4_dev*,int ) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_warn (struct mlx4_dev*,char*,int,int ) ;
 int radix_tree_delete (int *,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int synchronize_irq (int ) ;
 int wait_for_completion (int *) ;

void mlx4_cq_free(struct mlx4_dev *dev, struct mlx4_cq *cq)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_cq_table *cq_table = &priv->cq_table;
 int err;

 err = mlx4_HW2SW_CQ(dev, ((void*)0), cq->cqn);
 if (err)
  mlx4_warn(dev, "HW2SW_CQ failed (%d) for CQN %06x\n", err, cq->cqn);

 synchronize_irq(priv->eq_table.eq[cq->vector].irq);

 spin_lock_irq(&cq_table->lock);
 radix_tree_delete(&cq_table->tree, cq->cqn);
 spin_unlock_irq(&cq_table->lock);

 if (atomic_dec_and_test(&cq->refcount))
  complete(&cq->free);
 wait_for_completion(&cq->free);

 mlx4_cq_free_icm(dev, cq->cqn);
}
