
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_mr_attr {int dummy; } ;
struct ib_mr {TYPE_1__* device; } ;
struct TYPE_2__ {int (* query_mr ) (struct ib_mr*,struct ib_mr_attr*) ;} ;


 int ENOSYS ;
 int stub1 (struct ib_mr*,struct ib_mr_attr*) ;

int ib_query_mr(struct ib_mr *mr, struct ib_mr_attr *mr_attr)
{
 return mr->device->query_mr ?
  mr->device->query_mr(mr, mr_attr) : -ENOSYS;
}
