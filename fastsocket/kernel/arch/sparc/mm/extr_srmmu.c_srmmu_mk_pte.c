
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int pte_t ;
typedef int pgprot_t ;


 int PAGE_SHIFT ;
 int __pte (int) ;
 int page_to_pfn (struct page*) ;
 int pgprot_val (int ) ;

__attribute__((used)) static pte_t srmmu_mk_pte(struct page *page, pgprot_t pgprot)
{ return __pte((page_to_pfn(page) << (PAGE_SHIFT-4)) | pgprot_val(pgprot)); }
