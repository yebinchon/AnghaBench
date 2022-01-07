
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ index; } ;
typedef int pte_t ;


 scalar_t__ MACHINE_HAS_HPAGE ;
 int PTRS_PER_PTE ;
 int _PAGE_TYPE_EMPTY ;
 int clear_table (unsigned long*,int ,int) ;
 int init_mm ;
 int pte_free (int *,int *) ;

void arch_release_hugepage(struct page *page)
{
 pte_t *ptep;

 if (MACHINE_HAS_HPAGE)
  return;

 ptep = (pte_t *) page[1].index;
 if (!ptep)
  return;
 clear_table((unsigned long *) ptep, _PAGE_TYPE_EMPTY,
      PTRS_PER_PTE * sizeof(pte_t));
 pte_free(&init_mm, ptep);
 page[1].index = 0;
}
