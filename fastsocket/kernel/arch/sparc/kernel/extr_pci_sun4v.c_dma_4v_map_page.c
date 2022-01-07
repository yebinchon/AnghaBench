
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct page {int dummy; } ;
struct iommu {unsigned long page_table_map_base; int lock; } ;
struct dma_attrs {int dummy; } ;
struct TYPE_2__ {struct iommu* iommu; } ;
struct device {TYPE_1__ archdata; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef unsigned long dma_addr_t ;


 long DMA_ERROR_CODE ;
 int DMA_NONE ;
 int DMA_TO_DEVICE ;
 unsigned long HV_PCI_MAP_ATTR_READ ;
 unsigned long HV_PCI_MAP_ATTR_WRITE ;
 unsigned long IO_PAGE_ALIGN (unsigned long) ;
 unsigned long IO_PAGE_MASK ;
 unsigned long IO_PAGE_SHIFT ;
 scalar_t__ IO_PAGE_SIZE ;
 int WARN_ON (int) ;
 unsigned long __pa (unsigned long) ;
 long iommu_batch_add (unsigned long) ;
 long iommu_batch_end () ;
 int iommu_batch_start (struct device*,unsigned long,long) ;
 long iommu_range_alloc (struct device*,struct iommu*,unsigned long,int *) ;
 int iommu_range_free (struct iommu*,unsigned long,unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ page_address (struct page*) ;
 scalar_t__ printk_ratelimit () ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static dma_addr_t dma_4v_map_page(struct device *dev, struct page *page,
      unsigned long offset, size_t sz,
      enum dma_data_direction direction,
      struct dma_attrs *attrs)
{
 struct iommu *iommu;
 unsigned long flags, npages, oaddr;
 unsigned long i, base_paddr;
 u32 bus_addr, ret;
 unsigned long prot;
 long entry;

 iommu = dev->archdata.iommu;

 if (unlikely(direction == DMA_NONE))
  goto bad;

 oaddr = (unsigned long)(page_address(page) + offset);
 npages = IO_PAGE_ALIGN(oaddr + sz) - (oaddr & IO_PAGE_MASK);
 npages >>= IO_PAGE_SHIFT;

 spin_lock_irqsave(&iommu->lock, flags);
 entry = iommu_range_alloc(dev, iommu, npages, ((void*)0));
 spin_unlock_irqrestore(&iommu->lock, flags);

 if (unlikely(entry == DMA_ERROR_CODE))
  goto bad;

 bus_addr = (iommu->page_table_map_base +
      (entry << IO_PAGE_SHIFT));
 ret = bus_addr | (oaddr & ~IO_PAGE_MASK);
 base_paddr = __pa(oaddr & IO_PAGE_MASK);
 prot = HV_PCI_MAP_ATTR_READ;
 if (direction != DMA_TO_DEVICE)
  prot |= HV_PCI_MAP_ATTR_WRITE;

 local_irq_save(flags);

 iommu_batch_start(dev, prot, entry);

 for (i = 0; i < npages; i++, base_paddr += IO_PAGE_SIZE) {
  long err = iommu_batch_add(base_paddr);
  if (unlikely(err < 0L))
   goto iommu_map_fail;
 }
 if (unlikely(iommu_batch_end() < 0L))
  goto iommu_map_fail;

 local_irq_restore(flags);

 return ret;

bad:
 if (printk_ratelimit())
  WARN_ON(1);
 return DMA_ERROR_CODE;

iommu_map_fail:

 spin_lock(&iommu->lock);
 iommu_range_free(iommu, bus_addr, npages);
 spin_unlock_irqrestore(&iommu->lock, flags);

 return DMA_ERROR_CODE;
}
