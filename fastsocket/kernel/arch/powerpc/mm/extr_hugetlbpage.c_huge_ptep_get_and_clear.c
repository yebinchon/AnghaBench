
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_t ;


 int __pte (unsigned long) ;
 unsigned long pte_update (struct mm_struct*,unsigned long,int *,unsigned long,int) ;

pte_t huge_ptep_get_and_clear(struct mm_struct *mm, unsigned long addr,
         pte_t *ptep)
{
 unsigned long old = pte_update(mm, addr, ptep, ~0UL, 1);
 return __pte(old);
}
