
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx4_qp_table {int lock; } ;
struct mlx4_qp {int free; int refcount; int (* event ) (struct mlx4_qp*,int) ;} ;
struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {struct mlx4_qp_table qp_table; } ;


 struct mlx4_qp* __mlx4_qp_lookup (struct mlx4_dev*,int ) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int complete (int *) ;
 int mlx4_dbg (struct mlx4_dev*,char*,int ) ;
 TYPE_1__* mlx4_priv (struct mlx4_dev*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct mlx4_qp*,int) ;

void mlx4_qp_event(struct mlx4_dev *dev, u32 qpn, int event_type)
{
 struct mlx4_qp_table *qp_table = &mlx4_priv(dev)->qp_table;
 struct mlx4_qp *qp;

 spin_lock(&qp_table->lock);

 qp = __mlx4_qp_lookup(dev, qpn);
 if (qp)
  atomic_inc(&qp->refcount);

 spin_unlock(&qp_table->lock);

 if (!qp) {
  mlx4_dbg(dev, "Async event for none existent QP %08x\n", qpn);
  return;
 }

 qp->event(qp, event_type);

 if (atomic_dec_and_test(&qp->refcount))
  complete(&qp->free);
}
