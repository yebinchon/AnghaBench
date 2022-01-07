
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qp_list {int idx; TYPE_1__** qps; } ;
struct TYPE_2__ {int ibqp; } ;


 int c4iw_qp_rem_ref (int *) ;

__attribute__((used)) static void deref_qps(struct qp_list qp_list)
{
 int idx;

 for (idx = 0; idx < qp_list.idx; idx++)
  c4iw_qp_rem_ref(&qp_list.qps[idx]->ibqp);
}
