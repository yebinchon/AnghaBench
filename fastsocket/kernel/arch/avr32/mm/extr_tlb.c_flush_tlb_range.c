
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {unsigned long context; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 unsigned long MMU_CONTEXT_ASID_MASK ;
 int MMU_DTLB_ENTRIES ;
 unsigned long MMU_NO_ASID ;
 unsigned long NO_CONTEXT ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int __flush_tlb_page (unsigned long,unsigned long) ;
 int activate_context (struct mm_struct*) ;
 TYPE_1__* current ;
 unsigned long get_asid () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int set_asid (unsigned long) ;

void flush_tlb_range(struct vm_area_struct *vma, unsigned long start,
       unsigned long end)
{
 struct mm_struct *mm = vma->vm_mm;

 if (mm->context != NO_CONTEXT) {
  unsigned long flags;
  int size;

  local_irq_save(flags);
  size = (end - start + (PAGE_SIZE - 1)) >> PAGE_SHIFT;

  if (size > (MMU_DTLB_ENTRIES / 4)) {
   mm->context = NO_CONTEXT;
   if (mm == current->mm)
    activate_context(mm);
  } else {
   unsigned long asid;
   unsigned long saved_asid;

   asid = mm->context & MMU_CONTEXT_ASID_MASK;
   saved_asid = MMU_NO_ASID;

   start &= PAGE_MASK;
   end += (PAGE_SIZE - 1);
   end &= PAGE_MASK;

   if (mm != current->mm) {
    saved_asid = get_asid();
    set_asid(asid);
   }

   while (start < end) {
    __flush_tlb_page(asid, start);
    start += PAGE_SIZE;
   }
   if (saved_asid != MMU_NO_ASID)
    set_asid(saved_asid);
  }
  local_irq_restore(flags);
 }
}
