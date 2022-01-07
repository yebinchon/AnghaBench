
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ib_phys_buf {int dummy; } ;
struct ib_pd {int usecnt; TYPE_1__* device; } ;
struct ib_mr {int usecnt; int * uobject; struct ib_pd* pd; TYPE_1__* device; } ;
struct TYPE_2__ {struct ib_mr* (* reg_phys_mr ) (struct ib_pd*,struct ib_phys_buf*,int,int,int *) ;} ;


 int ENOSYS ;
 struct ib_mr* ERR_PTR (int ) ;
 int IS_ERR (struct ib_mr*) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 struct ib_mr* stub1 (struct ib_pd*,struct ib_phys_buf*,int,int,int *) ;

struct ib_mr *ib_reg_phys_mr(struct ib_pd *pd,
        struct ib_phys_buf *phys_buf_array,
        int num_phys_buf,
        int mr_access_flags,
        u64 *iova_start)
{
 struct ib_mr *mr;

 if (!pd->device->reg_phys_mr)
  return ERR_PTR(-ENOSYS);

 mr = pd->device->reg_phys_mr(pd, phys_buf_array, num_phys_buf,
         mr_access_flags, iova_start);

 if (!IS_ERR(mr)) {
  mr->device = pd->device;
  mr->pd = pd;
  mr->uobject = ((void*)0);
  atomic_inc(&pd->usecnt);
  atomic_set(&mr->usecnt, 0);
 }

 return mr;
}
