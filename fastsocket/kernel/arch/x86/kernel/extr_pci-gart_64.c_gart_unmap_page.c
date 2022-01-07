
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef scalar_t__ dma_addr_t ;


 int EMERGENCY_PAGES ;
 scalar_t__ PAGE_SHIFT ;
 int PAGE_SIZE ;
 int free_iommu (unsigned long,int) ;
 int gart_unmapped_entry ;
 scalar_t__ iommu_bus_base ;
 int * iommu_gatt_base ;
 int iommu_num_pages (scalar_t__,size_t,int) ;
 scalar_t__ iommu_size ;

__attribute__((used)) static void gart_unmap_page(struct device *dev, dma_addr_t dma_addr,
       size_t size, enum dma_data_direction dir,
       struct dma_attrs *attrs)
{
 unsigned long iommu_page;
 int npages;
 int i;

 if (dma_addr < iommu_bus_base + EMERGENCY_PAGES*PAGE_SIZE ||
     dma_addr >= iommu_bus_base + iommu_size)
  return;

 iommu_page = (dma_addr - iommu_bus_base)>>PAGE_SHIFT;
 npages = iommu_num_pages(dma_addr, size, PAGE_SIZE);
 for (i = 0; i < npages; i++) {
  iommu_gatt_base[iommu_page + i] = gart_unmapped_entry;
 }
 free_iommu(iommu_page, npages);
}
