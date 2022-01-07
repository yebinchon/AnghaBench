
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_table {unsigned long it_size; int it_lock; int it_map; } ;


 unsigned long PAGE_SHIFT ;
 int iommu_area_reserve (int ,unsigned long,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void iommu_range_reserve(struct iommu_table *tbl,
 unsigned long start_addr, unsigned int npages)
{
 unsigned long index;
 unsigned long end;
 unsigned long flags;

 index = start_addr >> PAGE_SHIFT;


 if (index >= tbl->it_size)
  return;

 end = index + npages;
 if (end > tbl->it_size)
  end = tbl->it_size;

 spin_lock_irqsave(&tbl->it_lock, flags);

 iommu_area_reserve(tbl->it_map, index, npages);

 spin_unlock_irqrestore(&tbl->it_lock, flags);
}
