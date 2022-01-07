
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int pd; } ;
struct qib_qp {TYPE_1__ ibqp; } ;
struct qib_ibport {int qp0; } ;
struct ib_ah_attr {int port_num; int dlid; } ;
struct ib_ah {int dummy; } ;
struct TYPE_4__ {int port; } ;


 int EINVAL ;
 struct ib_ah* ERR_PTR (int ) ;
 struct ib_ah* ib_create_ah (int ,struct ib_ah_attr*) ;
 int memset (struct ib_ah_attr*,int ,int) ;
 TYPE_2__* ppd_from_ibp (struct qib_ibport*) ;
 struct qib_qp* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct ib_ah *qib_create_qp0_ah(struct qib_ibport *ibp, u16 dlid)
{
 struct ib_ah_attr attr;
 struct ib_ah *ah = ERR_PTR(-EINVAL);
 struct qib_qp *qp0;

 memset(&attr, 0, sizeof attr);
 attr.dlid = dlid;
 attr.port_num = ppd_from_ibp(ibp)->port;
 rcu_read_lock();
 qp0 = rcu_dereference(ibp->qp0);
 if (qp0)
  ah = ib_create_ah(qp0->ibqp.pd, &attr);
 rcu_read_unlock();
 return ah;
}
