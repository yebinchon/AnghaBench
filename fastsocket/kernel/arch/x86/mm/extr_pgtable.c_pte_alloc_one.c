
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef struct page* pgtable_t ;


 int __userpte_alloc_gfp ;
 struct page* alloc_pages (int ,int ) ;
 int pgtable_page_ctor (struct page*) ;

pgtable_t pte_alloc_one(struct mm_struct *mm, unsigned long address)
{
 struct page *pte;

 pte = alloc_pages(__userpte_alloc_gfp, 0);
 if (pte)
  pgtable_page_ctor(pte);
 return pte;
}
