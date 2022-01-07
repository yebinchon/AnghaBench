
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_table {scalar_t__ it_offset; } ;
struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef unsigned long dma_addr_t ;
struct TYPE_2__ {int (* tce_build ) (struct iommu_table*,unsigned long,unsigned int,unsigned long,int,struct dma_attrs*) ;int (* tce_flush ) (struct iommu_table*) ;} ;


 unsigned long DMA_ERROR_CODE ;
 unsigned long IOMMU_PAGE_MASK ;
 unsigned long IOMMU_PAGE_SHIFT ;
 int __iommu_free (struct iommu_table*,unsigned long,unsigned int) ;
 unsigned long iommu_range_alloc (struct device*,struct iommu_table*,unsigned int,int *,unsigned long,unsigned int) ;
 int mb () ;
 TYPE_1__ ppc_md ;
 int stub1 (struct iommu_table*,unsigned long,unsigned int,unsigned long,int,struct dma_attrs*) ;
 int stub2 (struct iommu_table*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static dma_addr_t iommu_alloc(struct device *dev, struct iommu_table *tbl,
         void *page, unsigned int npages,
         enum dma_data_direction direction,
         unsigned long mask, unsigned int align_order,
         struct dma_attrs *attrs)
{
 unsigned long entry;
 dma_addr_t ret = DMA_ERROR_CODE;
 int build_fail;

 entry = iommu_range_alloc(dev, tbl, npages, ((void*)0), mask, align_order);

 if (unlikely(entry == DMA_ERROR_CODE))
  return DMA_ERROR_CODE;

 entry += tbl->it_offset;
 ret = entry << IOMMU_PAGE_SHIFT;


 build_fail = ppc_md.tce_build(tbl, entry, npages,
                               (unsigned long)page & IOMMU_PAGE_MASK,
                               direction, attrs);






 if (unlikely(build_fail)) {
  __iommu_free(tbl, ret, npages);
  return DMA_ERROR_CODE;
 }


 if (ppc_md.tce_flush)
  ppc_md.tce_flush(tbl);


 mb();

 return ret;
}
