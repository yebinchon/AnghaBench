
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_arena {int map; } ;
struct iommu {unsigned long page_table_map_base; struct iommu_arena arena; } ;
typedef unsigned long dma_addr_t ;


 unsigned long IO_PAGE_SHIFT ;
 int iommu_area_free (int ,unsigned long,unsigned long) ;

void iommu_range_free(struct iommu *iommu, dma_addr_t dma_addr, unsigned long npages)
{
 struct iommu_arena *arena = &iommu->arena;
 unsigned long entry;

 entry = (dma_addr - iommu->page_table_map_base) >> IO_PAGE_SHIFT;

 iommu_area_free(arena->map, entry, npages);
}
