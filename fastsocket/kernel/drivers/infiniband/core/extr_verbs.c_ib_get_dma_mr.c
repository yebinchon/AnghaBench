
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_pd {int usecnt; TYPE_1__* device; } ;
struct ib_mr {int usecnt; int * uobject; struct ib_pd* pd; TYPE_1__* device; } ;
struct TYPE_2__ {struct ib_mr* (* get_dma_mr ) (struct ib_pd*,int) ;} ;


 int IS_ERR (struct ib_mr*) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 struct ib_mr* stub1 (struct ib_pd*,int) ;

struct ib_mr *ib_get_dma_mr(struct ib_pd *pd, int mr_access_flags)
{
 struct ib_mr *mr;

 mr = pd->device->get_dma_mr(pd, mr_access_flags);

 if (!IS_ERR(mr)) {
  mr->device = pd->device;
  mr->pd = pd;
  mr->uobject = ((void*)0);
  atomic_inc(&pd->usecnt);
  atomic_set(&mr->usecnt, 0);
 }

 return mr;
}
