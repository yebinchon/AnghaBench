
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int pgd_offset_k (unsigned long) ;
 int pmd_offset (int ,unsigned long) ;
 int * pte_offset_kernel (int ,unsigned long) ;
 int pud_offset (int ,unsigned long) ;

__attribute__((used)) static inline pte_t *kmap_get_fixmap_pte(unsigned long vaddr)
{
 return pte_offset_kernel(pmd_offset(pud_offset(pgd_offset_k(vaddr),
   vaddr), vaddr), vaddr);
}
