
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;


 unsigned long PAGE_SHIFT ;
 unsigned long PUD_MASK ;
 struct page* pte_page (int ) ;

struct page *
follow_huge_pud(struct mm_struct *mm, unsigned long address,
  pud_t *pud, int write)
{
 struct page *page;

 page = pte_page(*(pte_t *)pud);
 if (page)
  page += ((address & ~PUD_MASK) >> PAGE_SHIFT);
 return page;
}
