
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_cq {TYPE_1__* device; } ;
struct TYPE_2__ {int (* resize_cq ) (struct ib_cq*,int,int *) ;} ;


 int ENOSYS ;
 int stub1 (struct ib_cq*,int,int *) ;

int ib_resize_cq(struct ib_cq *cq, int cqe)
{
 return cq->device->resize_cq ?
  cq->device->resize_cq(cq, cqe, ((void*)0)) : -ENOSYS;
}
