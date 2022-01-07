
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pgprot_t ;


 int CPA_PAGES_ARRAY ;
 int __pgprot (int ) ;
 int change_page_attr_set_clr (int *,int,int ,int ,int ,int ,struct page**) ;

__attribute__((used)) static inline int cpa_set_pages_array(struct page **pages, int numpages,
           pgprot_t mask)
{
 return change_page_attr_set_clr(((void*)0), numpages, mask, __pgprot(0), 0,
  CPA_PAGES_ARRAY, pages);
}
