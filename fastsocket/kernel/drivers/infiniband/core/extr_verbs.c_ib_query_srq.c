
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_srq_attr {int dummy; } ;
struct ib_srq {TYPE_1__* device; } ;
struct TYPE_2__ {int (* query_srq ) (struct ib_srq*,struct ib_srq_attr*) ;} ;


 int ENOSYS ;
 int stub1 (struct ib_srq*,struct ib_srq_attr*) ;

int ib_query_srq(struct ib_srq *srq,
   struct ib_srq_attr *srq_attr)
{
 return srq->device->query_srq ?
  srq->device->query_srq(srq, srq_attr) : -ENOSYS;
}
