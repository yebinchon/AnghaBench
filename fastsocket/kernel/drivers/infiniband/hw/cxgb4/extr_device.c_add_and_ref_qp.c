
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qp_list {int idx; struct c4iw_qp** qps; } ;
struct c4iw_qp {int ibqp; } ;


 int c4iw_qp_add_ref (int *) ;

__attribute__((used)) static int add_and_ref_qp(int id, void *p, void *data)
{
 struct qp_list *qp_listp = data;
 struct c4iw_qp *qp = p;

 c4iw_qp_add_ref(&qp->ibqp);
 qp_listp->qps[qp_listp->idx++] = qp;
 return 0;
}
