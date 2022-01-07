
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_pd {int usecnt; } ;
struct ib_ah {TYPE_1__* device; struct ib_pd* pd; } ;
struct TYPE_2__ {int (* destroy_ah ) (struct ib_ah*) ;} ;


 int atomic_dec (int *) ;
 int stub1 (struct ib_ah*) ;

int ib_destroy_ah(struct ib_ah *ah)
{
 struct ib_pd *pd;
 int ret;

 pd = ah->pd;
 ret = ah->device->destroy_ah(ah);
 if (!ret)
  atomic_dec(&pd->usecnt);

 return ret;
}
