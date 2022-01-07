
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct mm_struct {int mmap_sem; } ;
struct gru_thread_state {int ts_ctxlock; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int EINVAL ;
 struct gru_thread_state* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct gru_thread_state*) ;
 int TSID (unsigned long,struct vm_area_struct*) ;
 TYPE_1__* current ;
 int down_write (int *) ;
 int downgrade_write (int *) ;
 struct gru_thread_state* gru_alloc_thread_state (struct vm_area_struct*,int ) ;
 struct vm_area_struct* gru_find_vma (unsigned long) ;
 int mutex_lock (int *) ;
 int up_write (int *) ;

__attribute__((used)) static struct gru_thread_state *gru_alloc_locked_gts(unsigned long vaddr)
{
 struct mm_struct *mm = current->mm;
 struct vm_area_struct *vma;
 struct gru_thread_state *gts = ERR_PTR(-EINVAL);

 down_write(&mm->mmap_sem);
 vma = gru_find_vma(vaddr);
 if (!vma)
  goto err;

 gts = gru_alloc_thread_state(vma, TSID(vaddr, vma));
 if (IS_ERR(gts))
  goto err;
 mutex_lock(&gts->ts_ctxlock);
 downgrade_write(&mm->mmap_sem);
 return gts;

err:
 up_write(&mm->mmap_sem);
 return gts;
}
