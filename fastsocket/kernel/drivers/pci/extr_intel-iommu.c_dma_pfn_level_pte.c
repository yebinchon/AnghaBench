
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {struct dma_pte* pgd; int agaw; } ;
struct dma_pte {int dummy; } ;


 int agaw_to_level (int ) ;
 int dma_pte_addr (struct dma_pte*) ;
 int dma_pte_present (struct dma_pte*) ;
 int pfn_level_offset (unsigned long,int) ;
 struct dma_pte* phys_to_virt (int ) ;

__attribute__((used)) static struct dma_pte *dma_pfn_level_pte(struct dmar_domain *domain,
      unsigned long pfn,
      int level)
{
 struct dma_pte *parent, *pte = ((void*)0);
 int total = agaw_to_level(domain->agaw);
 int offset;

 parent = domain->pgd;
 while (level <= total) {
  offset = pfn_level_offset(pfn, total);
  pte = &parent[offset];
  if (level == total)
   return pte;

  if (!dma_pte_present(pte))
   break;
  parent = phys_to_virt(dma_pte_addr(pte));
  total--;
 }
 return ((void*)0);
}
