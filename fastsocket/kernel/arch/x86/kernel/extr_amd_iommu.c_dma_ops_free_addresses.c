
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_ops_domain {unsigned long next_address; int need_flush; struct aperture_range** aperture; } ;
struct aperture_range {int bitmap; } ;


 unsigned int APERTURE_MAX_RANGES ;
 unsigned long APERTURE_RANGE_SHIFT ;
 unsigned long APERTURE_RANGE_SIZE ;
 int BUG_ON (int) ;
 unsigned long PAGE_SHIFT ;
 int iommu_area_free (int ,unsigned long,unsigned int) ;

__attribute__((used)) static void dma_ops_free_addresses(struct dma_ops_domain *dom,
       unsigned long address,
       unsigned int pages)
{
 unsigned i = address >> APERTURE_RANGE_SHIFT;
 struct aperture_range *range = dom->aperture[i];

 BUG_ON(i >= APERTURE_MAX_RANGES || range == ((void*)0));






 if (address >= dom->next_address)
  dom->need_flush = 1;

 address = (address % APERTURE_RANGE_SIZE) >> PAGE_SHIFT;

 iommu_area_free(range->bitmap, address, pages);

}
