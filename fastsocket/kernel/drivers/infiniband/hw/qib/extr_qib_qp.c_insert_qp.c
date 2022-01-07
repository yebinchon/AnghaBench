
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qp_num; int device; } ;
struct qib_qp {int next; TYPE_1__ ibqp; int refcount; int port_num; } ;
struct qib_ibport {int qp1; int qp0; } ;
struct qib_ibdev {int qpt_lock; int * qp_table; } ;


 int atomic_inc (int *) ;
 unsigned int qpn_hash (struct qib_ibdev*,int) ;
 int rcu_assign_pointer (int ,struct qib_qp*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int synchronize_rcu () ;
 struct qib_ibport* to_iport (int ,int ) ;

__attribute__((used)) static void insert_qp(struct qib_ibdev *dev, struct qib_qp *qp)
{
 struct qib_ibport *ibp = to_iport(qp->ibqp.device, qp->port_num);
 unsigned long flags;
 unsigned n = qpn_hash(dev, qp->ibqp.qp_num);

 spin_lock_irqsave(&dev->qpt_lock, flags);
 atomic_inc(&qp->refcount);

 if (qp->ibqp.qp_num == 0)
  rcu_assign_pointer(ibp->qp0, qp);
 else if (qp->ibqp.qp_num == 1)
  rcu_assign_pointer(ibp->qp1, qp);
 else {
  qp->next = dev->qp_table[n];
  rcu_assign_pointer(dev->qp_table[n], qp);
 }

 spin_unlock_irqrestore(&dev->qpt_lock, flags);
 synchronize_rcu();
}
