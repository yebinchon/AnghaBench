
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int get_iommu_table_base (struct device*) ;
 int iommu_free_coherent (int ,size_t,void*,int ) ;

__attribute__((used)) static void dma_iommu_free_coherent(struct device *dev, size_t size,
        void *vaddr, dma_addr_t dma_handle)
{
 iommu_free_coherent(get_iommu_table_base(dev), size, vaddr, dma_handle);
}
