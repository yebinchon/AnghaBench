
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_pd {int usecnt; TYPE_1__* device; } ;
struct ib_mr {int usecnt; int * uobject; struct ib_pd* pd; TYPE_1__* device; } ;
struct TYPE_2__ {struct ib_mr* (* alloc_fast_reg_mr ) (struct ib_pd*,int) ;} ;


 int ENOSYS ;
 struct ib_mr* ERR_PTR (int ) ;
 int IS_ERR (struct ib_mr*) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 struct ib_mr* stub1 (struct ib_pd*,int) ;

struct ib_mr *ib_alloc_fast_reg_mr(struct ib_pd *pd, int max_page_list_len)
{
 struct ib_mr *mr;

 if (!pd->device->alloc_fast_reg_mr)
  return ERR_PTR(-ENOSYS);

 mr = pd->device->alloc_fast_reg_mr(pd, max_page_list_len);

 if (!IS_ERR(mr)) {
  mr->device = pd->device;
  mr->pd = pd;
  mr->uobject = ((void*)0);
  atomic_inc(&pd->usecnt);
  atomic_set(&mr->usecnt, 0);
 }

 return mr;
}
