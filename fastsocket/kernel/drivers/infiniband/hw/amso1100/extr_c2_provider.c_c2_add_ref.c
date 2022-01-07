
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_qp {int dummy; } ;
struct c2_qp {int refcount; } ;


 int BUG_ON (int) ;
 int atomic_inc (int *) ;
 struct c2_qp* to_c2qp (struct ib_qp*) ;

__attribute__((used)) static void c2_add_ref(struct ib_qp *ibqp)
{
 struct c2_qp *qp;
 BUG_ON(!ibqp);
 qp = to_c2qp(ibqp);
 atomic_inc(&qp->refcount);
}
