
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct hstate {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;


 scalar_t__ PMD_SHIFT ;
 scalar_t__ huge_page_shift (struct hstate*) ;
 int * pmd_alloc (struct mm_struct*,int *,unsigned long) ;

__attribute__((used)) static pmd_t *hpmd_alloc(struct mm_struct *mm, pud_t *pud, unsigned long addr,
    struct hstate *hstate)
{
 if (huge_page_shift(hstate) < PMD_SHIFT)
  return pmd_alloc(mm, pud, addr);
 else
  return (pmd_t *) pud;
}
