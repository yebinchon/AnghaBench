
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ib_phys_buf {int dummy; } ;
struct ib_pd {int usecnt; } ;
struct ib_mr {TYPE_1__* device; struct ib_pd* pd; int usecnt; } ;
struct TYPE_2__ {int (* rereg_phys_mr ) (struct ib_mr*,int,struct ib_pd*,struct ib_phys_buf*,int,int,int *) ;} ;


 int EBUSY ;
 int ENOSYS ;
 int IB_MR_REREG_PD ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int stub1 (struct ib_mr*,int,struct ib_pd*,struct ib_phys_buf*,int,int,int *) ;

int ib_rereg_phys_mr(struct ib_mr *mr,
       int mr_rereg_mask,
       struct ib_pd *pd,
       struct ib_phys_buf *phys_buf_array,
       int num_phys_buf,
       int mr_access_flags,
       u64 *iova_start)
{
 struct ib_pd *old_pd;
 int ret;

 if (!mr->device->rereg_phys_mr)
  return -ENOSYS;

 if (atomic_read(&mr->usecnt))
  return -EBUSY;

 old_pd = mr->pd;

 ret = mr->device->rereg_phys_mr(mr, mr_rereg_mask, pd,
     phys_buf_array, num_phys_buf,
     mr_access_flags, iova_start);

 if (!ret && (mr_rereg_mask & IB_MR_REREG_PD)) {
  atomic_dec(&old_pd->usecnt);
  atomic_inc(&pd->usecnt);
 }

 return ret;
}
