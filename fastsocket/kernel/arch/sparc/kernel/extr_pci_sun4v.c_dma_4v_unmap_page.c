
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_pbm_info {int devhandle; } ;
struct iommu {size_t page_table_map_base; int lock; } ;
struct dma_attrs {int dummy; } ;
struct TYPE_2__ {struct pci_pbm_info* host_controller; struct iommu* iommu; } ;
struct device {TYPE_1__ archdata; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef size_t dma_addr_t ;


 int DMA_NONE ;
 int HV_PCI_TSBID (int ,long) ;
 size_t IO_PAGE_ALIGN (size_t) ;
 size_t IO_PAGE_MASK ;
 unsigned long IO_PAGE_SHIFT ;
 int WARN_ON (int) ;
 int iommu_range_free (struct iommu*,size_t,unsigned long) ;
 unsigned long pci_sun4v_iommu_demap (int ,int ,unsigned long) ;
 scalar_t__ printk_ratelimit () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void dma_4v_unmap_page(struct device *dev, dma_addr_t bus_addr,
         size_t sz, enum dma_data_direction direction,
         struct dma_attrs *attrs)
{
 struct pci_pbm_info *pbm;
 struct iommu *iommu;
 unsigned long flags, npages;
 long entry;
 u32 devhandle;

 if (unlikely(direction == DMA_NONE)) {
  if (printk_ratelimit())
   WARN_ON(1);
  return;
 }

 iommu = dev->archdata.iommu;
 pbm = dev->archdata.host_controller;
 devhandle = pbm->devhandle;

 npages = IO_PAGE_ALIGN(bus_addr + sz) - (bus_addr & IO_PAGE_MASK);
 npages >>= IO_PAGE_SHIFT;
 bus_addr &= IO_PAGE_MASK;

 spin_lock_irqsave(&iommu->lock, flags);

 iommu_range_free(iommu, bus_addr, npages);

 entry = (bus_addr - iommu->page_table_map_base) >> IO_PAGE_SHIFT;
 do {
  unsigned long num;

  num = pci_sun4v_iommu_demap(devhandle, HV_PCI_TSBID(0, entry),
         npages);
  entry += num;
  npages -= num;
 } while (npages != 0);

 spin_unlock_irqrestore(&iommu->lock, flags);
}
