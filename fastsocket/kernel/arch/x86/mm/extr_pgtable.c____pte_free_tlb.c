
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mmu_gather {int dummy; } ;


 int page_to_pfn (struct page*) ;
 int paravirt_release_pte (int ) ;
 int pgtable_page_dtor (struct page*) ;
 int tlb_remove_page (struct mmu_gather*,struct page*) ;

void ___pte_free_tlb(struct mmu_gather *tlb, struct page *pte)
{
 pgtable_page_dtor(pte);
 paravirt_release_pte(page_to_pfn(pte));
 tlb_remove_page(tlb, pte);
}
