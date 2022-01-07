
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int iommu_unmap_page (int *,int ,size_t,int,int *) ;
 int vio_iommu_table ;

void iseries_hv_unmap(dma_addr_t dma_handle, size_t size,
   enum dma_data_direction direction)
{
 iommu_unmap_page(&vio_iommu_table, dma_handle, size, direction, ((void*)0));
}
