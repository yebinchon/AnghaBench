
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int DMA_BIT_MASK (int) ;
 unsigned long PAGE_SIZE ;
 int iommu_map_page (int *,int *,int ,unsigned long,size_t,int ,int,int *) ;
 int vio_iommu_table ;
 int virt_to_page (void*) ;

dma_addr_t iseries_hv_map(void *vaddr, size_t size,
   enum dma_data_direction direction)
{
 return iommu_map_page(((void*)0), &vio_iommu_table, virt_to_page(vaddr),
         (unsigned long)vaddr % PAGE_SIZE, size,
         DMA_BIT_MASK(32), direction, ((void*)0));
}
