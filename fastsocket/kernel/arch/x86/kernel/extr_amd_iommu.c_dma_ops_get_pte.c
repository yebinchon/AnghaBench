
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dma_ops_domain {int domain; struct aperture_range** aperture; } ;
struct aperture_range {int ** pte_pages; } ;


 size_t APERTURE_PAGE_INDEX (unsigned long) ;
 size_t APERTURE_RANGE_INDEX (unsigned long) ;
 int GFP_ATOMIC ;
 int PM_LEVEL_INDEX (int ,unsigned long) ;
 int PM_MAP_4k ;
 int * alloc_pte (int *,unsigned long,int ,int **,int ) ;
 int update_domain (int *) ;

__attribute__((used)) static u64* dma_ops_get_pte(struct dma_ops_domain *dom,
       unsigned long address)
{
 struct aperture_range *aperture;
 u64 *pte, *pte_page;

 aperture = dom->aperture[APERTURE_RANGE_INDEX(address)];
 if (!aperture)
  return ((void*)0);

 pte = aperture->pte_pages[APERTURE_PAGE_INDEX(address)];
 if (!pte) {
  pte = alloc_pte(&dom->domain, address, PM_MAP_4k, &pte_page,
    GFP_ATOMIC);
  aperture->pte_pages[APERTURE_PAGE_INDEX(address)] = pte_page;
 } else
  pte += PM_LEVEL_INDEX(0, address);

 update_domain(&dom->domain);

 return pte;
}
