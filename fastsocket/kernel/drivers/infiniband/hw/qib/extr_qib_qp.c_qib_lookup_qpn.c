
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int qp_num; } ;
struct qib_qp {int refcount; TYPE_2__ ibqp; int next; } ;
struct qib_ibport {int qp1; int qp0; } ;
struct qib_ibdev {int * qp_table; } ;
struct TYPE_6__ {TYPE_1__* dd; } ;
struct TYPE_4__ {struct qib_ibdev verbs_dev; } ;


 int atomic_inc_not_zero (int *) ;
 TYPE_3__* ppd_from_ibp (struct qib_ibport*) ;
 unsigned int qpn_hash (struct qib_ibdev*,int) ;
 struct qib_qp* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;

struct qib_qp *qib_lookup_qpn(struct qib_ibport *ibp, u32 qpn)
{
 struct qib_qp *qp = ((void*)0);

 if (unlikely(qpn <= 1)) {
  rcu_read_lock();
  if (qpn == 0)
   qp = rcu_dereference(ibp->qp0);
  else
   qp = rcu_dereference(ibp->qp1);
 } else {
  struct qib_ibdev *dev = &ppd_from_ibp(ibp)->dd->verbs_dev;
  unsigned n = qpn_hash(dev, qpn);

  rcu_read_lock();
  for (qp = rcu_dereference(dev->qp_table[n]); qp;
   qp = rcu_dereference(qp->next))
   if (qp->ibqp.qp_num == qpn)
    break;
 }
 if (qp)
  if (unlikely(!atomic_inc_not_zero(&qp->refcount)))
   qp = ((void*)0);

 rcu_read_unlock();
 return qp;
}
