
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pud_t ;
typedef int pgd_t ;


 int gup_huge_pud (int ,unsigned long,unsigned long,int,struct page**,int*) ;
 int gup_pmd_range (int ,unsigned long,unsigned long,int,struct page**,int*) ;
 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 int pud_large (int ) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int gup_pud_range(pgd_t pgd, unsigned long addr, unsigned long end,
   int write, struct page **pages, int *nr)
{
 unsigned long next;
 pud_t *pudp;

 pudp = pud_offset(&pgd, addr);
 do {
  pud_t pud = *pudp;

  next = pud_addr_end(addr, end);
  if (pud_none(pud))
   return 0;
  if (unlikely(pud_large(pud))) {
   if (!gup_huge_pud(pud, addr, next, write, pages, nr))
    return 0;
  } else {
   if (!gup_pmd_range(pud, addr, next, write, pages, nr))
    return 0;
  }
 } while (pudp++, addr = next, addr != end);

 return 1;
}
