
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_swqe {int dummy; } ;
struct TYPE_2__ {int device; } ;
struct ipath_qp {int timerwait; TYPE_1__ ibqp; int path_mtu; int s_psn; int s_sge; int s_len; } ;
struct ipath_ibdev {size_t pending_index; int pending_lock; int * pending; } ;


 int ib_mtu_enum_to_int (int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int restart_sge (int *,struct ipath_swqe*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct ipath_ibdev* to_idev (int ) ;

__attribute__((used)) static void ipath_init_restart(struct ipath_qp *qp, struct ipath_swqe *wqe)
{
 struct ipath_ibdev *dev;

 qp->s_len = restart_sge(&qp->s_sge, wqe, qp->s_psn,
    ib_mtu_enum_to_int(qp->path_mtu));
 dev = to_idev(qp->ibqp.device);
 spin_lock(&dev->pending_lock);
 if (list_empty(&qp->timerwait))
  list_add_tail(&qp->timerwait,
         &dev->pending[dev->pending_index]);
 spin_unlock(&dev->pending_lock);
}
