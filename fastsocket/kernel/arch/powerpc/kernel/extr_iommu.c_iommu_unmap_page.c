
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table {int dummy; } ;
struct dma_attrs {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int BUG_ON (int) ;
 int DMA_NONE ;
 int IOMMU_PAGE_SIZE ;
 int iommu_free (struct iommu_table*,int ,unsigned int) ;
 unsigned int iommu_num_pages (int ,size_t,int ) ;

void iommu_unmap_page(struct iommu_table *tbl, dma_addr_t dma_handle,
        size_t size, enum dma_data_direction direction,
        struct dma_attrs *attrs)
{
 unsigned int npages;

 BUG_ON(direction == DMA_NONE);

 if (tbl) {
  npages = iommu_num_pages(dma_handle, size, IOMMU_PAGE_SIZE);
  iommu_free(tbl, dma_handle, npages);
 }
}
