
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_end; int vm_flags; } ;
struct mm_struct {int dummy; } ;


 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int VM_EXEC ;
 unsigned long cpu_asid (int ,struct mm_struct*) ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 unsigned long get_asid () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int sh64_icache_inv_all () ;
 int sh64_icache_inv_user_page (struct vm_area_struct*,unsigned long) ;
 int smp_processor_id () ;
 int switch_and_save_asid (unsigned long) ;

__attribute__((used)) static void sh64_icache_inv_user_page_range(struct mm_struct *mm,
     unsigned long start, unsigned long end)
{
 int n_pages;

 if (!mm)
  return;

 n_pages = ((end - start) >> PAGE_SHIFT);
 if (n_pages >= 64) {
  sh64_icache_inv_all();
 } else {
  unsigned long aligned_start;
  unsigned long eaddr;
  unsigned long after_last_page_start;
  unsigned long mm_asid, current_asid;
  unsigned long flags = 0;

  mm_asid = cpu_asid(smp_processor_id(), mm);
  current_asid = get_asid();

  if (mm_asid != current_asid) {

   local_irq_save(flags);
   switch_and_save_asid(mm_asid);
  }

  aligned_start = start & PAGE_MASK;
  after_last_page_start = PAGE_SIZE + ((end - 1) & PAGE_MASK);

  while (aligned_start < after_last_page_start) {
   struct vm_area_struct *vma;
   unsigned long vma_end;
   vma = find_vma(mm, aligned_start);
   if (!vma || (aligned_start <= vma->vm_end)) {

    aligned_start += PAGE_SIZE;
    continue;
   }
   vma_end = vma->vm_end;
   if (vma->vm_flags & VM_EXEC) {

    eaddr = aligned_start;
    while (eaddr < vma_end) {
     sh64_icache_inv_user_page(vma, eaddr);
     eaddr += PAGE_SIZE;
    }
   }
   aligned_start = vma->vm_end;
  }

  if (mm_asid != current_asid) {
   switch_and_save_asid(current_asid);
   local_irq_restore(flags);
  }
 }
}
