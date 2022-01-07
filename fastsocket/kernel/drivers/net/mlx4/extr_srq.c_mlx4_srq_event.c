
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlx4_srq_table {int lock; int tree; } ;
struct mlx4_srq {int free; int refcount; int (* event ) (struct mlx4_srq*,int) ;} ;
struct TYPE_3__ {int num_srqs; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct TYPE_4__ {struct mlx4_srq_table srq_table; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int complete (int *) ;
 TYPE_2__* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_warn (struct mlx4_dev*,char*,int) ;
 struct mlx4_srq* radix_tree_lookup (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct mlx4_srq*,int) ;

void mlx4_srq_event(struct mlx4_dev *dev, u32 srqn, int event_type)
{
 struct mlx4_srq_table *srq_table = &mlx4_priv(dev)->srq_table;
 struct mlx4_srq *srq;

 spin_lock(&srq_table->lock);

 srq = radix_tree_lookup(&srq_table->tree, srqn & (dev->caps.num_srqs - 1));
 if (srq)
  atomic_inc(&srq->refcount);

 spin_unlock(&srq_table->lock);

 if (!srq) {
  mlx4_warn(dev, "Async event for bogus SRQ %08x\n", srqn);
  return;
 }

 srq->event(srq, event_type);

 if (atomic_dec_and_test(&srq->refcount))
  complete(&srq->free);
}
