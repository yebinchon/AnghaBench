
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int id; } ;
struct mm_struct {TYPE_1__ context; } ;


 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_CONTEXT ;
 int idr_get_new_above (int *,int *,int,int*) ;
 int idr_pre_get (int *,int ) ;
 int idr_remove (int *,int) ;
 int mmu_context_idr ;
 int mmu_context_lock ;
 int mmu_virtual_psize ;
 scalar_t__ slice_mm_new_context (struct mm_struct*) ;
 int slice_set_user_psize (struct mm_struct*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int init_new_context(struct task_struct *tsk, struct mm_struct *mm)
{
 int index;
 int err;

again:
 if (!idr_pre_get(&mmu_context_idr, GFP_KERNEL))
  return -ENOMEM;

 spin_lock(&mmu_context_lock);
 err = idr_get_new_above(&mmu_context_idr, ((void*)0), 1, &index);
 spin_unlock(&mmu_context_lock);

 if (err == -EAGAIN)
  goto again;
 else if (err)
  return err;

 if (index > MAX_CONTEXT) {
  spin_lock(&mmu_context_lock);
  idr_remove(&mmu_context_idr, index);
  spin_unlock(&mmu_context_lock);
  return -ENOMEM;
 }





 if (slice_mm_new_context(mm))
  slice_set_user_psize(mm, mmu_virtual_psize);
 mm->context.id = index;

 return 0;
}
