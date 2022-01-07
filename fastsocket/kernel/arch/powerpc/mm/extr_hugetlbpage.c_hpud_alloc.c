
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct hstate {int dummy; } ;
typedef int pud_t ;
typedef int pgd_t ;


 scalar_t__ PUD_SHIFT ;
 scalar_t__ huge_page_shift (struct hstate*) ;
 int * pud_alloc (struct mm_struct*,int *,unsigned long) ;

__attribute__((used)) static pud_t *hpud_alloc(struct mm_struct *mm, pgd_t *pgd, unsigned long addr,
    struct hstate *hstate)
{
 if (huge_page_shift(hstate) < PUD_SHIFT)
  return pud_alloc(mm, pgd, addr);
 else
  return (pud_t *) pgd;
}
