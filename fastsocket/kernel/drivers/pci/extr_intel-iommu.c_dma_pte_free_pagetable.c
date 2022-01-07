
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {int * pgd; int gaw; int agaw; } ;
struct dma_pte {int dummy; } ;


 int BITS_PER_LONG ;
 int BUG_ON (int) ;
 unsigned long DOMAIN_MAX_PFN (int ) ;
 int VTD_PAGE_SHIFT ;
 int agaw_to_level (int ) ;
 int agaw_to_width (int ) ;
 unsigned long align_to_level (unsigned long,int) ;
 int dma_clear_pte (struct dma_pte*) ;
 struct dma_pte* dma_pfn_level_pte (struct dmar_domain*,unsigned long,int) ;
 int dma_pte_addr (struct dma_pte*) ;
 scalar_t__ dma_pte_present (struct dma_pte*) ;
 int domain_flush_cache (struct dmar_domain*,struct dma_pte*,int) ;
 int first_pte_in_page (struct dma_pte*) ;
 int free_pgtable_page (int *) ;
 unsigned long level_size (int) ;
 int * phys_to_virt (int ) ;

__attribute__((used)) static void dma_pte_free_pagetable(struct dmar_domain *domain,
       unsigned long start_pfn,
       unsigned long last_pfn)
{
 int addr_width = agaw_to_width(domain->agaw) - VTD_PAGE_SHIFT;
 struct dma_pte *first_pte, *pte;
 int total = agaw_to_level(domain->agaw);
 int level;
 unsigned long tmp;

 BUG_ON(addr_width < BITS_PER_LONG && start_pfn >> addr_width);
 BUG_ON(addr_width < BITS_PER_LONG && last_pfn >> addr_width);
 BUG_ON(start_pfn > last_pfn);


 level = 2;
 while (level <= total) {
  tmp = align_to_level(start_pfn, level);


  if (tmp + level_size(level) - 1 > last_pfn)
   return;

  do {
   first_pte = pte = dma_pfn_level_pte(domain, tmp, level);
   if (!pte) {
    tmp = align_to_level(tmp + 1, level + 1);
    continue;
   }
   do {
    if (dma_pte_present(pte)) {
     free_pgtable_page(phys_to_virt(dma_pte_addr(pte)));
     dma_clear_pte(pte);
    }
    pte++;
    tmp += level_size(level);
   } while (!first_pte_in_page(pte) &&
     tmp + level_size(level) - 1 <= last_pfn);

   domain_flush_cache(domain, first_pte,
        (void *)pte - (void *)first_pte);

  } while (tmp && tmp + level_size(level) - 1 <= last_pfn);
  level++;
 }

 if (start_pfn == 0 && last_pfn == DOMAIN_MAX_PFN(domain->gaw)) {
  free_pgtable_page(domain->pgd);
  domain->pgd = ((void*)0);
 }
}
