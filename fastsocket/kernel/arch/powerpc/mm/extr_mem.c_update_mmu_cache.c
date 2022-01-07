
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int vm_mm; } ;
typedef int pte_t ;
struct TYPE_3__ {int * regs; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 unsigned long TASK_SIZE ;
 unsigned long TRAP (int *) ;
 unsigned long _PAGE_EXEC ;
 TYPE_2__* current ;
 int hash_preload (int ,unsigned long,unsigned long,unsigned long) ;
 int pte_young (int ) ;

void update_mmu_cache(struct vm_area_struct *vma, unsigned long address,
        pte_t pte)
{
}
