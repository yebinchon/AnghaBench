
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_mm; } ;
struct TYPE_2__ {int mm; } ;


 unsigned long MMU_NO_ASID ;
 scalar_t__ NO_CONTEXT ;
 unsigned long PAGE_MASK ;
 unsigned long cpu_asid (unsigned int,int ) ;
 scalar_t__ cpu_context (unsigned int,int ) ;
 TYPE_1__* current ;
 unsigned long get_asid () ;
 int local_flush_tlb_one (unsigned long,unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int set_asid (unsigned long) ;
 unsigned int smp_processor_id () ;

void local_flush_tlb_page(struct vm_area_struct *vma, unsigned long page)
{
 unsigned int cpu = smp_processor_id();

 if (vma->vm_mm && cpu_context(cpu, vma->vm_mm) != NO_CONTEXT) {
  unsigned long flags;
  unsigned long asid;
  unsigned long saved_asid = MMU_NO_ASID;

  asid = cpu_asid(cpu, vma->vm_mm);
  page &= PAGE_MASK;

  local_irq_save(flags);
  if (vma->vm_mm != current->mm) {
   saved_asid = get_asid();
   set_asid(asid);
  }
  local_flush_tlb_one(asid, page);
  if (saved_asid != MMU_NO_ASID)
   set_asid(saved_asid);
  local_irq_restore(flags);
 }
}
