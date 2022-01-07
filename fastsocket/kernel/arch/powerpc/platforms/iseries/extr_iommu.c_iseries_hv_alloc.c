
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;
typedef int dma_addr_t ;


 int DMA_BIT_MASK (int) ;
 void* iommu_alloc_coherent (int *,int *,size_t,int *,int ,int ,int) ;
 int vio_iommu_table ;

void *iseries_hv_alloc(size_t size, dma_addr_t *dma_handle, gfp_t flag)
{
 return iommu_alloc_coherent(((void*)0), &vio_iommu_table, size, dma_handle,
    DMA_BIT_MASK(32), flag, -1);
}
