
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_qp {int next; } ;
struct qib_ibport {int qp1; int qp0; } ;
struct qib_ibdev {unsigned int qp_table_size; int qpt_lock; int * qp_table; } ;
struct qib_devdata {unsigned int num_pports; TYPE_1__* pport; struct qib_ibdev verbs_dev; } ;
struct TYPE_2__ {struct qib_ibport ibport_data; } ;


 int lockdep_is_held (int *) ;
 int qib_mcast_tree_empty (struct qib_ibport*) ;
 int rcu_assign_pointer (int ,int *) ;
 scalar_t__ rcu_dereference (int ) ;
 struct qib_qp* rcu_dereference_protected (int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int synchronize_rcu () ;

unsigned qib_free_all_qps(struct qib_devdata *dd)
{
 struct qib_ibdev *dev = &dd->verbs_dev;
 unsigned long flags;
 struct qib_qp *qp;
 unsigned n, qp_inuse = 0;

 for (n = 0; n < dd->num_pports; n++) {
  struct qib_ibport *ibp = &dd->pport[n].ibport_data;

  if (!qib_mcast_tree_empty(ibp))
   qp_inuse++;
  rcu_read_lock();
  if (rcu_dereference(ibp->qp0))
   qp_inuse++;
  if (rcu_dereference(ibp->qp1))
   qp_inuse++;
  rcu_read_unlock();
 }

 spin_lock_irqsave(&dev->qpt_lock, flags);
 for (n = 0; n < dev->qp_table_size; n++) {
  qp = rcu_dereference_protected(dev->qp_table[n],
   lockdep_is_held(&dev->qpt_lock));
  rcu_assign_pointer(dev->qp_table[n], ((void*)0));

  for (; qp; qp = rcu_dereference_protected(qp->next,
     lockdep_is_held(&dev->qpt_lock)))
   qp_inuse++;
 }
 spin_unlock_irqrestore(&dev->qpt_lock, flags);
 synchronize_rcu();

 return qp_inuse;
}
