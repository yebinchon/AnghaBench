
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_mm; } ;
typedef int pte_t ;
struct TYPE_2__ {scalar_t__ active_mm; } ;


 int MMU_PTEH ;
 int MMU_PTEL ;
 unsigned long MMU_VPN_MASK ;
 unsigned long _PAGE_FLAGS_HARDWARE_MASK ;
 int ctrl_outl (unsigned long,int ) ;
 TYPE_1__* current ;
 unsigned long get_asid () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned long pte_val (int ) ;

void __update_tlb(struct vm_area_struct *vma, unsigned long address, pte_t pte)
{
 unsigned long flags, pteval, vpn;




 if (vma && current->active_mm != vma->vm_mm)
  return;

 local_irq_save(flags);


 vpn = (address & MMU_VPN_MASK) | get_asid();
 ctrl_outl(vpn, MMU_PTEH);

 pteval = pte_val(pte);


 pteval &= _PAGE_FLAGS_HARDWARE_MASK;

 ctrl_outl(pteval, MMU_PTEL);


 asm volatile("ldtlb": : : "memory");
 local_irq_restore(flags);
}
