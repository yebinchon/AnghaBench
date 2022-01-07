
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_pd {int usecnt; } ;
struct ib_mr {TYPE_1__* device; struct ib_pd* pd; int usecnt; } ;
struct TYPE_2__ {int (* dereg_mr ) (struct ib_mr*) ;} ;


 int EBUSY ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int stub1 (struct ib_mr*) ;

int ib_dereg_mr(struct ib_mr *mr)
{
 struct ib_pd *pd;
 int ret;

 if (atomic_read(&mr->usecnt))
  return -EBUSY;

 pd = mr->pd;
 ret = mr->device->dereg_mr(mr);
 if (!ret)
  atomic_dec(&pd->usecnt);

 return ret;
}
