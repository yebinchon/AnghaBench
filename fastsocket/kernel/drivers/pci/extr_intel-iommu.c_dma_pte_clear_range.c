
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {int agaw; } ;
struct dma_pte {int dummy; } ;


 int BITS_PER_LONG ;
 int BUG_ON (int) ;
 int VTD_PAGE_SHIFT ;
 int agaw_to_width (int ) ;
 unsigned long align_to_level (unsigned long,int) ;
 int dma_clear_pte (struct dma_pte*) ;
 struct dma_pte* dma_pfn_level_pte (struct dmar_domain*,unsigned long,int) ;
 int domain_flush_cache (struct dmar_domain*,struct dma_pte*,int) ;
 int first_pte_in_page (struct dma_pte*) ;

__attribute__((used)) static void dma_pte_clear_range(struct dmar_domain *domain,
    unsigned long start_pfn,
    unsigned long last_pfn)
{
 int addr_width = agaw_to_width(domain->agaw) - VTD_PAGE_SHIFT;
 struct dma_pte *first_pte, *pte;

 BUG_ON(addr_width < BITS_PER_LONG && start_pfn >> addr_width);
 BUG_ON(addr_width < BITS_PER_LONG && last_pfn >> addr_width);
 BUG_ON(start_pfn > last_pfn);


 do {
  first_pte = pte = dma_pfn_level_pte(domain, start_pfn, 1);
  if (!pte) {
   start_pfn = align_to_level(start_pfn + 1, 2);
   continue;
  }
  do {
   dma_clear_pte(pte);
   start_pfn++;
   pte++;
  } while (start_pfn <= last_pfn && !first_pte_in_page(pte));

  domain_flush_cache(domain, first_pte,
       (void *)pte - (void *)first_pte);

 } while (start_pfn && start_pfn <= last_pfn);
}
