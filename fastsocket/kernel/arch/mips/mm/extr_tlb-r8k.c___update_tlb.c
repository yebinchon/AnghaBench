
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_mm; } ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
struct TYPE_2__ {scalar_t__ active_mm; } ;


 int ASID_MASK ;
 unsigned long PAGE_MASK ;
 TYPE_1__* current ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int * pgd_offset (scalar_t__,unsigned long) ;
 int * pmd_offset (int *,unsigned long) ;
 int * pte_offset_map (int *,unsigned long) ;
 int pte_val (int ) ;
 int read_c0_entryhi () ;
 int tlb_probe () ;
 int tlb_write () ;
 int write_c0_entryhi (int) ;
 int write_c0_entrylo (int) ;
 int write_c0_vaddr (unsigned long) ;

void __update_tlb(struct vm_area_struct * vma, unsigned long address, pte_t pte)
{
 unsigned long flags;
 pgd_t *pgdp;
 pmd_t *pmdp;
 pte_t *ptep;
 int pid;




 if (current->active_mm != vma->vm_mm)
  return;

 pid = read_c0_entryhi() & ASID_MASK;

 local_irq_save(flags);
 address &= PAGE_MASK;
 write_c0_vaddr(address);
 write_c0_entryhi(pid);
 pgdp = pgd_offset(vma->vm_mm, address);
 pmdp = pmd_offset(pgdp, address);
 ptep = pte_offset_map(pmdp, address);
 tlb_probe();

 write_c0_entrylo(pte_val(*ptep++) >> 6);
 tlb_write();

 write_c0_entryhi(pid);
 local_irq_restore(flags);
}
