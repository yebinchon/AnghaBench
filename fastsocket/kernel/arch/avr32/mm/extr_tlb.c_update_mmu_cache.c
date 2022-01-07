
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_mm; } ;
typedef int pte_t ;
struct TYPE_2__ {scalar_t__ active_mm; } ;


 TYPE_1__* current ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int update_dtlb (unsigned long,int ) ;

void update_mmu_cache(struct vm_area_struct *vma,
        unsigned long address, pte_t pte)
{
 unsigned long flags;


 if (vma && current->active_mm != vma->vm_mm)
  return;

 local_irq_save(flags);
 update_dtlb(address, pte);
 local_irq_restore(flags);
}
