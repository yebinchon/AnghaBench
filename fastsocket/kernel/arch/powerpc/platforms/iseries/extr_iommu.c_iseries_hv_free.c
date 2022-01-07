
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dma_addr_t ;


 int iommu_free_coherent (int *,size_t,void*,int ) ;
 int vio_iommu_table ;

void iseries_hv_free(size_t size, void *vaddr, dma_addr_t dma_handle)
{
 iommu_free_coherent(&vio_iommu_table, size, vaddr, dma_handle);
}
