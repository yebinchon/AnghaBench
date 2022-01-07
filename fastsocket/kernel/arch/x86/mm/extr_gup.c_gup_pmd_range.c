
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;


 int gup_huge_pmd (int ,unsigned long,unsigned long,int,struct page**,int*) ;
 int gup_pte_range (int ,unsigned long,unsigned long,int,struct page**,int*) ;
 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 int pmd_large (int ) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 scalar_t__ pmd_trans_splitting (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int gup_pmd_range(pud_t pud, unsigned long addr, unsigned long end,
  int write, struct page **pages, int *nr)
{
 unsigned long next;
 pmd_t *pmdp;

 pmdp = pmd_offset(&pud, addr);
 do {
  pmd_t pmd = *pmdp;

  next = pmd_addr_end(addr, end);
  if (pmd_none(pmd) || pmd_trans_splitting(pmd))
   return 0;
  if (unlikely(pmd_large(pmd))) {
   if (!gup_huge_pmd(pmd, addr, next, write, pages, nr))
    return 0;
  } else {
   if (!gup_pte_range(pmd, addr, next, write, pages, nr))
    return 0;
  }
 } while (pmdp++, addr = next, addr != end);

 return 1;
}
