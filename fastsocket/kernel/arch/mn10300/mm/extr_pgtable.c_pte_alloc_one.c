
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int dummy; } ;


 int GFP_KERNEL ;
 int __GFP_HIGHMEM ;
 int __GFP_REPEAT ;
 struct page* alloc_pages (int,int ) ;
 int clear_highpage (struct page*) ;

struct page *pte_alloc_one(struct mm_struct *mm, unsigned long address)
{
 struct page *pte;




 pte = alloc_pages(GFP_KERNEL|__GFP_REPEAT, 0);

 if (pte)
  clear_highpage(pte);
 return pte;
}
