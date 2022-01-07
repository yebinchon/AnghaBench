
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned long ALIGN (unsigned long long,int ) ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 unsigned long long dma_get_seg_boundary (struct device*) ;
 unsigned long iommu_area_alloc (int ,unsigned long,unsigned long,int,unsigned long,unsigned long,unsigned long) ;
 int iommu_bitmap_lock ;
 unsigned long long iommu_bus_base ;
 scalar_t__ iommu_fullflush ;
 int iommu_gart_bitmap ;
 unsigned long iommu_pages ;
 int need_flush ;
 unsigned long next_bit ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned long alloc_iommu(struct device *dev, int size,
     unsigned long align_mask)
{
 unsigned long offset, flags;
 unsigned long boundary_size;
 unsigned long base_index;

 base_index = ALIGN(iommu_bus_base & dma_get_seg_boundary(dev),
      PAGE_SIZE) >> PAGE_SHIFT;
 boundary_size = ALIGN((unsigned long long)dma_get_seg_boundary(dev) + 1,
         PAGE_SIZE) >> PAGE_SHIFT;

 spin_lock_irqsave(&iommu_bitmap_lock, flags);
 offset = iommu_area_alloc(iommu_gart_bitmap, iommu_pages, next_bit,
      size, base_index, boundary_size, align_mask);
 if (offset == -1) {
  need_flush = 1;
  offset = iommu_area_alloc(iommu_gart_bitmap, iommu_pages, 0,
       size, base_index, boundary_size,
       align_mask);
 }
 if (offset != -1) {
  next_bit = offset+size;
  if (next_bit >= iommu_pages) {
   next_bit = 0;
   need_flush = 1;
  }
 }
 if (iommu_fullflush)
  need_flush = 1;
 spin_unlock_irqrestore(&iommu_bitmap_lock, flags);

 return offset;
}
