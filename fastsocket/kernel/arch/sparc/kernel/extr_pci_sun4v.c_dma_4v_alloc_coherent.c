
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct iommu {int lock; scalar_t__ page_table_map_base; } ;
struct TYPE_2__ {int numa_node; struct iommu* iommu; } ;
struct device {TYPE_1__ archdata; } ;
typedef int gfp_t ;
typedef scalar_t__ dma_addr_t ;


 long DMA_ERROR_CODE ;
 int HV_PCI_MAP_ATTR_READ ;
 int HV_PCI_MAP_ATTR_WRITE ;
 size_t IO_PAGE_ALIGN (size_t) ;
 size_t IO_PAGE_SHIFT ;
 unsigned long MAX_ORDER ;
 unsigned long PAGE_SIZE ;
 unsigned long __pa (unsigned long) ;
 struct page* alloc_pages_node (int,int ,unsigned long) ;
 int free_pages (unsigned long,unsigned long) ;
 unsigned long get_order (size_t) ;
 long iommu_batch_add (unsigned long) ;
 long iommu_batch_end () ;
 int iommu_batch_start (struct device*,int,long) ;
 long iommu_range_alloc (struct device*,struct iommu*,unsigned long,int *) ;
 int iommu_range_free (struct iommu*,scalar_t__,unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int memset (char*,int ,unsigned long) ;
 scalar_t__ page_address (struct page*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void *dma_4v_alloc_coherent(struct device *dev, size_t size,
       dma_addr_t *dma_addrp, gfp_t gfp)
{
 unsigned long flags, order, first_page, npages, n;
 struct iommu *iommu;
 struct page *page;
 void *ret;
 long entry;
 int nid;

 size = IO_PAGE_ALIGN(size);
 order = get_order(size);
 if (unlikely(order >= MAX_ORDER))
  return ((void*)0);

 npages = size >> IO_PAGE_SHIFT;

 nid = dev->archdata.numa_node;
 page = alloc_pages_node(nid, gfp, order);
 if (unlikely(!page))
  return ((void*)0);

 first_page = (unsigned long) page_address(page);
 memset((char *)first_page, 0, PAGE_SIZE << order);

 iommu = dev->archdata.iommu;

 spin_lock_irqsave(&iommu->lock, flags);
 entry = iommu_range_alloc(dev, iommu, npages, ((void*)0));
 spin_unlock_irqrestore(&iommu->lock, flags);

 if (unlikely(entry == DMA_ERROR_CODE))
  goto range_alloc_fail;

 *dma_addrp = (iommu->page_table_map_base +
        (entry << IO_PAGE_SHIFT));
 ret = (void *) first_page;
 first_page = __pa(first_page);

 local_irq_save(flags);

 iommu_batch_start(dev,
     (HV_PCI_MAP_ATTR_READ |
      HV_PCI_MAP_ATTR_WRITE),
     entry);

 for (n = 0; n < npages; n++) {
  long err = iommu_batch_add(first_page + (n * PAGE_SIZE));
  if (unlikely(err < 0L))
   goto iommu_map_fail;
 }

 if (unlikely(iommu_batch_end() < 0L))
  goto iommu_map_fail;

 local_irq_restore(flags);

 return ret;

iommu_map_fail:

 spin_lock(&iommu->lock);
 iommu_range_free(iommu, *dma_addrp, npages);
 spin_unlock_irqrestore(&iommu->lock, flags);

range_alloc_fail:
 free_pages(first_page, order);
 return ((void*)0);
}
