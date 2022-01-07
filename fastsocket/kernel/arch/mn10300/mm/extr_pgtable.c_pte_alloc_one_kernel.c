
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_t ;


 int GFP_KERNEL ;
 int __GFP_REPEAT ;
 scalar_t__ __get_free_page (int) ;
 int clear_page (int *) ;

pte_t *pte_alloc_one_kernel(struct mm_struct *mm, unsigned long address)
{
 pte_t *pte = (pte_t *)__get_free_page(GFP_KERNEL|__GFP_REPEAT);
 if (pte)
  clear_page(pte);
 return pte;
}
