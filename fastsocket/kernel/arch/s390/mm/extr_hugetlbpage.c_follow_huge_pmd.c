
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pmd_t ;


 unsigned long HPAGE_MASK ;
 int MACHINE_HAS_HPAGE ;
 unsigned long PAGE_SHIFT ;
 struct page* pmd_page (int ) ;

struct page *follow_huge_pmd(struct mm_struct *mm, unsigned long address,
        pmd_t *pmdp, int write)
{
 struct page *page;

 if (!MACHINE_HAS_HPAGE)
  return ((void*)0);

 page = pmd_page(*pmdp);
 if (page)
  page += ((address & ~HPAGE_MASK) >> PAGE_SHIFT);
 return page;
}
