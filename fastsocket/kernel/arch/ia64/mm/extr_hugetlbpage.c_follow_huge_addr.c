
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pte_t ;


 int EINVAL ;
 struct page* ERR_PTR (int ) ;
 unsigned long HPAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ REGION_NUMBER (unsigned long) ;
 scalar_t__ RGN_HPAGE ;
 int * huge_pte_offset (struct mm_struct*,unsigned long) ;
 scalar_t__ pte_none (int ) ;
 struct page* pte_page (int ) ;

struct page *follow_huge_addr(struct mm_struct *mm, unsigned long addr, int write)
{
 struct page *page;
 pte_t *ptep;

 if (REGION_NUMBER(addr) != RGN_HPAGE)
  return ERR_PTR(-EINVAL);

 ptep = huge_pte_offset(mm, addr);
 if (!ptep || pte_none(*ptep))
  return ((void*)0);
 page = pte_page(*ptep);
 page += ((addr & ~HPAGE_MASK) >> PAGE_SHIFT);
 return page;
}
