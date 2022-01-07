
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;


 unsigned long PAGE_SHIFT ;
 unsigned long PMD_MASK ;
 struct page* pte_page (int ) ;

struct page *
follow_huge_pmd(struct mm_struct *mm, unsigned long address,
  pmd_t *pmd, int write)
{
 struct page *page;

 page = pte_page(*(pte_t *)pmd);
 if (page)
  page += ((address & ~PMD_MASK) >> PAGE_SHIFT);
 return page;
}
