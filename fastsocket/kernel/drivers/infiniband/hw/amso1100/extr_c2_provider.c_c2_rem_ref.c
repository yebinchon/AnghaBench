
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_qp {int dummy; } ;
struct c2_qp {int wait; int refcount; } ;


 int BUG_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 struct c2_qp* to_c2qp (struct ib_qp*) ;
 int wake_up (int *) ;

__attribute__((used)) static void c2_rem_ref(struct ib_qp *ibqp)
{
 struct c2_qp *qp;
 BUG_ON(!ibqp);
 qp = to_c2qp(ibqp);
 if (atomic_dec_and_test(&qp->refcount))
  wake_up(&qp->wait);
}
