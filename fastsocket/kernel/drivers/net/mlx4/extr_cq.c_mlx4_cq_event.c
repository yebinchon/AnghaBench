
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int num_cqs; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cq_table {int lock; int tree; } ;
struct mlx4_cq {int free; int refcount; int (* event ) (struct mlx4_cq*,int) ;} ;
struct TYPE_4__ {struct mlx4_cq_table cq_table; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int complete (int *) ;
 TYPE_2__* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_warn (struct mlx4_dev*,char*,int) ;
 struct mlx4_cq* radix_tree_lookup (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct mlx4_cq*,int) ;

void mlx4_cq_event(struct mlx4_dev *dev, u32 cqn, int event_type)
{
 struct mlx4_cq_table *cq_table = &mlx4_priv(dev)->cq_table;
 struct mlx4_cq *cq;

 spin_lock(&cq_table->lock);

 cq = radix_tree_lookup(&cq_table->tree, cqn & (dev->caps.num_cqs - 1));
 if (cq)
  atomic_inc(&cq->refcount);

 spin_unlock(&cq_table->lock);

 if (!cq) {
  mlx4_warn(dev, "Async event for bogus CQ %08x\n", cqn);
  return;
 }

 cq->event(cq, event_type);

 if (atomic_dec_and_test(&cq->refcount))
  complete(&cq->free);
}
