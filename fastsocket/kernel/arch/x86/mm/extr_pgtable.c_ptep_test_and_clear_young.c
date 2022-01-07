
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct vm_area_struct {int vm_mm; } ;
struct TYPE_5__ {int pte; } ;
typedef TYPE_1__ pte_t ;


 int _PAGE_BIT_ACCESSED ;
 int pte_update (int ,unsigned long,TYPE_1__*) ;
 scalar_t__ pte_young (TYPE_1__) ;
 int test_and_clear_bit (int ,unsigned long*) ;

int ptep_test_and_clear_young(struct vm_area_struct *vma,
         unsigned long addr, pte_t *ptep)
{
 int ret = 0;

 if (pte_young(*ptep))
  ret = test_and_clear_bit(_PAGE_BIT_ACCESSED,
      (unsigned long *) &ptep->pte);

 if (ret)
  pte_update(vma->vm_mm, addr, ptep);

 return ret;
}
