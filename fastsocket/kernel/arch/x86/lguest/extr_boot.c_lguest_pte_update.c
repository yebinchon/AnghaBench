
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mm_struct {int pgd; } ;
struct TYPE_3__ {int pte_low; int pte_high; } ;
typedef TYPE_1__ pte_t ;


 int LHCALL_SET_PTE ;
 int __pa (int ) ;
 int lazy_hcall3 (int ,int ,unsigned long,int ) ;
 int lazy_hcall4 (int ,int ,unsigned long,int ,int ) ;

__attribute__((used)) static void lguest_pte_update(struct mm_struct *mm, unsigned long addr,
          pte_t *ptep)
{





 lazy_hcall3(LHCALL_SET_PTE, __pa(mm->pgd), addr, ptep->pte_low);

}
