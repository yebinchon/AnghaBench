
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_mm; } ;
typedef int pte_t ;
struct TYPE_2__ {scalar_t__ active_mm; } ;


 int ASID_MASK ;
 unsigned long PAGE_MASK ;
 int barrier () ;
 TYPE_1__* current ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pectx_set (int ) ;
 int pevn_get () ;
 int pevn_set (int) ;
 int pte_val (int ) ;
 int tlb_probe () ;
 int tlb_write_indexed () ;
 int tlb_write_random () ;
 int tlbpt_get () ;

void __update_tlb(struct vm_area_struct *vma, unsigned long address, pte_t pte)
{
 unsigned long flags;
 int idx, pid;




 if (current->active_mm != vma->vm_mm)
  return;

 pid = pevn_get() & ASID_MASK;

 local_irq_save(flags);
 address &= PAGE_MASK;
 pevn_set(address | pid);
 barrier();
 tlb_probe();
 idx = tlbpt_get();
 pectx_set(pte_val(pte));
 pevn_set(address | pid);
 if (idx < 0)
  tlb_write_random();
 else
  tlb_write_indexed();

 pevn_set(pid);
 local_irq_restore(flags);
}
