
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pgd_t ;


 int PAGE_SHIFT ;
 unsigned int PTRS_PER_PTE ;
 int _PAGE_PRESENT ;
 int __pgd (int ) ;
 int * __va (int) ;
 int free_page (long) ;
 int pgd_flags (int ) ;
 int pgd_pfn (int ) ;
 int release_pte (int ) ;

__attribute__((used)) static void release_pgd(pgd_t *spgd)
{

 if (pgd_flags(*spgd) & _PAGE_PRESENT) {
  unsigned int i;





  pte_t *ptepage = __va(pgd_pfn(*spgd) << PAGE_SHIFT);

  for (i = 0; i < PTRS_PER_PTE; i++)
   release_pte(ptepage[i]);

  free_page((long)ptepage);

  *spgd = __pgd(0);
 }
}
