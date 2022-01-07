
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_qp_table {int lock; } ;
struct mlx4_qp {int qpn; } ;
struct TYPE_3__ {int num_qps; } ;
struct mlx4_dev {TYPE_1__ caps; int qp_table_tree; } ;
struct TYPE_4__ {struct mlx4_qp_table qp_table; } ;


 TYPE_2__* mlx4_priv (struct mlx4_dev*) ;
 int radix_tree_delete (int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mlx4_qp_remove(struct mlx4_dev *dev, struct mlx4_qp *qp)
{
 struct mlx4_qp_table *qp_table = &mlx4_priv(dev)->qp_table;
 unsigned long flags;

 spin_lock_irqsave(&qp_table->lock, flags);
 radix_tree_delete(&dev->qp_table_tree, qp->qpn & (dev->caps.num_qps - 1));
 spin_unlock_irqrestore(&qp_table->lock, flags);
}
