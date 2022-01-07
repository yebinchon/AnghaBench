
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scatterlist {int dma_address; } ;
struct iommu {int page_table_map_base; int * page_table; scalar_t__ iommu_ctxflush; } ;
typedef int iopte_t ;


 unsigned long IOPTE_CONTEXT ;
 int IO_PAGE_MASK ;
 int IO_PAGE_SHIFT ;
 unsigned long iopte_val (int ) ;

__attribute__((used)) static unsigned long fetch_sg_ctx(struct iommu *iommu, struct scatterlist *sg)
{
 unsigned long ctx = 0;

 if (iommu->iommu_ctxflush) {
  iopte_t *base;
  u32 bus_addr;

  bus_addr = sg->dma_address & IO_PAGE_MASK;
  base = iommu->page_table +
   ((bus_addr - iommu->page_table_map_base) >> IO_PAGE_SHIFT);

  ctx = (iopte_val(*base) & IOPTE_CONTEXT) >> 47UL;
 }
 return ctx;
}
