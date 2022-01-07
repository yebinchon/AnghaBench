
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {scalar_t__ strbuf_ctxflush; int strbuf_enabled; } ;
struct iommu {unsigned long page_table_map_base; int lock; int * page_table; scalar_t__ iommu_ctxflush; } ;
struct TYPE_2__ {struct strbuf* stc; struct iommu* iommu; } ;
struct device {TYPE_1__ archdata; } ;
typedef int iopte_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef unsigned long dma_addr_t ;


 unsigned long IOPTE_CONTEXT ;
 unsigned long IO_PAGE_ALIGN (unsigned long) ;
 unsigned long IO_PAGE_MASK ;
 unsigned long IO_PAGE_SHIFT ;
 unsigned long iopte_val (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strbuf_flush (struct strbuf*,struct iommu*,unsigned long,unsigned long,unsigned long,int) ;

__attribute__((used)) static void dma_4u_sync_single_for_cpu(struct device *dev,
           dma_addr_t bus_addr, size_t sz,
           enum dma_data_direction direction)
{
 struct iommu *iommu;
 struct strbuf *strbuf;
 unsigned long flags, ctx, npages;

 iommu = dev->archdata.iommu;
 strbuf = dev->archdata.stc;

 if (!strbuf->strbuf_enabled)
  return;

 spin_lock_irqsave(&iommu->lock, flags);

 npages = IO_PAGE_ALIGN(bus_addr + sz) - (bus_addr & IO_PAGE_MASK);
 npages >>= IO_PAGE_SHIFT;
 bus_addr &= IO_PAGE_MASK;


 ctx = 0;
 if (iommu->iommu_ctxflush &&
     strbuf->strbuf_ctxflush) {
  iopte_t *iopte;

  iopte = iommu->page_table +
   ((bus_addr - iommu->page_table_map_base)>>IO_PAGE_SHIFT);
  ctx = (iopte_val(*iopte) & IOPTE_CONTEXT) >> 47UL;
 }


 strbuf_flush(strbuf, iommu, bus_addr, ctx, npages, direction);

 spin_unlock_irqrestore(&iommu->lock, flags);
}
