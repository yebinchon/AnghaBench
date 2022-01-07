
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu {int page_table_map_base; int lock; int * page_table; } ;
struct TYPE_2__ {struct iommu* iommu; } ;
struct device {TYPE_1__ archdata; } ;
typedef int iopte_t ;
typedef int dma_addr_t ;


 int IO_PAGE_ALIGN (size_t) ;
 int IO_PAGE_SHIFT ;
 int free_pages (unsigned long,unsigned long) ;
 unsigned long get_order (size_t) ;
 int iommu_range_free (struct iommu*,int,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dma_4u_free_coherent(struct device *dev, size_t size,
     void *cpu, dma_addr_t dvma)
{
 struct iommu *iommu;
 iopte_t *iopte;
 unsigned long flags, order, npages;

 npages = IO_PAGE_ALIGN(size) >> IO_PAGE_SHIFT;
 iommu = dev->archdata.iommu;
 iopte = iommu->page_table +
  ((dvma - iommu->page_table_map_base) >> IO_PAGE_SHIFT);

 spin_lock_irqsave(&iommu->lock, flags);

 iommu_range_free(iommu, dvma, npages);

 spin_unlock_irqrestore(&iommu->lock, flags);

 order = get_order(size);
 if (order < 10)
  free_pages((unsigned long)cpu, order);
}
