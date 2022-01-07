
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mm_struct {int mmap_sem; } ;
struct ib_umem {unsigned long diff; int work; struct mm_struct* mm; scalar_t__ offset; scalar_t__ length; struct ib_ucontext* context; } ;
struct ib_ucontext {scalar_t__ closing; int device; } ;
struct TYPE_5__ {TYPE_1__* mm; } ;
struct TYPE_4__ {unsigned long locked_vm; } ;


 int INIT_WORK (int *,int ) ;
 unsigned long PAGE_ALIGN (scalar_t__) ;
 unsigned long PAGE_SHIFT ;
 int __ib_umem_release (int ,struct ib_umem*,int) ;
 TYPE_2__* current ;
 int down_write (int *) ;
 int down_write_trylock (int *) ;
 struct mm_struct* get_task_mm (TYPE_2__*) ;
 int ib_umem_account ;
 int ib_wq ;
 int kfree (struct ib_umem*) ;
 int mmput (struct mm_struct*) ;
 int queue_work (int ,int *) ;
 int up_write (int *) ;

void ib_umem_release(struct ib_umem *umem)
{
 struct ib_ucontext *context = umem->context;
 struct mm_struct *mm;
 unsigned long diff;

 __ib_umem_release(umem->context->device, umem, 1);

 mm = get_task_mm(current);
 if (!mm) {
  kfree(umem);
  return;
 }

 diff = PAGE_ALIGN(umem->length + umem->offset) >> PAGE_SHIFT;
 if (context->closing) {
  if (!down_write_trylock(&mm->mmap_sem)) {
   INIT_WORK(&umem->work, ib_umem_account);
   umem->mm = mm;
   umem->diff = diff;

   queue_work(ib_wq, &umem->work);
   return;
  }
 } else
  down_write(&mm->mmap_sem);

 current->mm->locked_vm -= diff;
 up_write(&mm->mmap_sem);
 mmput(mm);
 kfree(umem);
}
