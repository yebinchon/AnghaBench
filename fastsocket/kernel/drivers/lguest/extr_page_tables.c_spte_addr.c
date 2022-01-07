
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lg_cpu {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 int BUG_ON (int) ;
 int PAGE_SHIFT ;
 int _PAGE_PRESENT ;
 int * __va (int) ;
 int pgd_flags (int ) ;
 int pgd_pfn (int ) ;
 int pmd_flags (int ) ;
 int pmd_pfn (int ) ;
 size_t pte_index (unsigned long) ;
 int * spmd_addr (struct lg_cpu*,int ,unsigned long) ;

__attribute__((used)) static pte_t *spte_addr(struct lg_cpu *cpu, pgd_t spgd, unsigned long vaddr)
{







 pte_t *page = __va(pgd_pfn(spgd) << PAGE_SHIFT);

 BUG_ON(!(pgd_flags(spgd) & _PAGE_PRESENT));


 return &page[pte_index(vaddr)];
}
