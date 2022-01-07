
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hstate {int dummy; } ;
typedef int pud_t ;
typedef int pgd_t ;


 scalar_t__ PUD_SHIFT ;
 scalar_t__ huge_page_shift (struct hstate*) ;
 int * pud_offset (int *,unsigned long) ;

__attribute__((used)) static pud_t *hpud_offset(pgd_t *pgd, unsigned long addr, struct hstate *hstate)
{
 if (huge_page_shift(hstate) < PUD_SHIFT)
  return pud_offset(pgd, addr);
 else
  return (pud_t *) pgd;
}
