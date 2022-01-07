
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; struct mm_struct* vm_mm; } ;
struct mm_struct {scalar_t__ context; } ;


 scalar_t__ NO_CONTEXT ;
 int VM_EXEC ;
 int get_rasid_register () ;
 int invalidate_dtlb_mapping (unsigned long) ;
 int invalidate_itlb_mapping (unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_save_flags (unsigned long) ;
 int set_rasid_register (int) ;

void flush_tlb_page (struct vm_area_struct *vma, unsigned long page)
{
 struct mm_struct* mm = vma->vm_mm;
 unsigned long flags;
 int oldpid;

 if(mm->context == NO_CONTEXT)
  return;

 local_save_flags(flags);

        oldpid = get_rasid_register();

 if (vma->vm_flags & VM_EXEC)
  invalidate_itlb_mapping(page);
 invalidate_dtlb_mapping(page);

 set_rasid_register(oldpid);

 local_irq_restore(flags);
}
