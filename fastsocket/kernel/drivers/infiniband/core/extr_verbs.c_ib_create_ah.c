
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_pd {int usecnt; TYPE_1__* device; } ;
struct ib_ah_attr {int dummy; } ;
struct ib_ah {int * uobject; struct ib_pd* pd; TYPE_1__* device; } ;
struct TYPE_2__ {struct ib_ah* (* create_ah ) (struct ib_pd*,struct ib_ah_attr*) ;} ;


 int IS_ERR (struct ib_ah*) ;
 int atomic_inc (int *) ;
 struct ib_ah* stub1 (struct ib_pd*,struct ib_ah_attr*) ;

struct ib_ah *ib_create_ah(struct ib_pd *pd, struct ib_ah_attr *ah_attr)
{
 struct ib_ah *ah;

 ah = pd->device->create_ah(pd, ah_attr);

 if (!IS_ERR(ah)) {
  ah->device = pd->device;
  ah->pd = pd;
  ah->uobject = ((void*)0);
  atomic_inc(&pd->usecnt);
 }

 return ah;
}
