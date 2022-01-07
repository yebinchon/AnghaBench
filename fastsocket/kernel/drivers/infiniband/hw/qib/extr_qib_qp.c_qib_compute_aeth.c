
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qib_rwq {scalar_t__ head; scalar_t__ tail; } ;
struct TYPE_4__ {scalar_t__ size; struct qib_rwq* wq; } ;
struct TYPE_3__ {scalar_t__ srq; } ;
struct qib_qp {scalar_t__ r_msn; TYPE_2__ r_rq; TYPE_1__ ibqp; } ;
typedef int __be32 ;


 scalar_t__ QIB_AETH_CREDIT_INVAL ;
 scalar_t__ QIB_AETH_CREDIT_SHIFT ;
 scalar_t__ QIB_MSN_MASK ;
 int cpu_to_be32 (scalar_t__) ;
 scalar_t__* credit_table ;

__be32 qib_compute_aeth(struct qib_qp *qp)
{
 u32 aeth = qp->r_msn & QIB_MSN_MASK;

 if (qp->ibqp.srq) {




  aeth |= QIB_AETH_CREDIT_INVAL << QIB_AETH_CREDIT_SHIFT;
 } else {
  u32 min, max, x;
  u32 credits;
  struct qib_rwq *wq = qp->r_rq.wq;
  u32 head;
  u32 tail;


  head = wq->head;
  if (head >= qp->r_rq.size)
   head = 0;
  tail = wq->tail;
  if (tail >= qp->r_rq.size)
   tail = 0;





  credits = head - tail;
  if ((int)credits < 0)
   credits += qp->r_rq.size;




  min = 0;
  max = 31;
  for (;;) {
   x = (min + max) / 2;
   if (credit_table[x] == credits)
    break;
   if (credit_table[x] > credits)
    max = x;
   else if (min == x)
    break;
   else
    min = x;
  }
  aeth |= x << QIB_AETH_CREDIT_SHIFT;
 }
 return cpu_to_be32(aeth);
}
