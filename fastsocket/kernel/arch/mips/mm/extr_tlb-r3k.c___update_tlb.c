
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_mm; } ;
typedef int pte_t ;
struct TYPE_2__ {scalar_t__ active_mm; } ;


 int ASID_MASK ;
 int BARRIER ;
 unsigned long PAGE_MASK ;
 int cpu ;
 int cpu_context (int ,scalar_t__) ;
 TYPE_1__* current ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printk (char*,int,int) ;
 int pte_val (int ) ;
 int read_c0_entryhi () ;
 int read_c0_index () ;
 int tlb_probe () ;
 int tlb_write_indexed () ;
 int tlb_write_random () ;
 int write_c0_entryhi (int) ;
 int write_c0_entrylo0 (int ) ;

void __update_tlb(struct vm_area_struct *vma, unsigned long address, pte_t pte)
{
 unsigned long flags;
 int idx, pid;




 if (current->active_mm != vma->vm_mm)
  return;

 pid = read_c0_entryhi() & ASID_MASK;
 local_irq_save(flags);
 address &= PAGE_MASK;
 write_c0_entryhi(address | pid);
 BARRIER;
 tlb_probe();
 idx = read_c0_index();
 write_c0_entrylo0(pte_val(pte));
 write_c0_entryhi(address | pid);
 if (idx < 0) {
  tlb_write_random();
 } else {
  tlb_write_indexed();
 }
 write_c0_entryhi(pid);
 local_irq_restore(flags);
}
