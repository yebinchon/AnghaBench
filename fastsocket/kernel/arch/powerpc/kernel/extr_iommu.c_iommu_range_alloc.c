
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_pool {unsigned long start; unsigned long end; unsigned long hint; int lock; } ;
struct iommu_table {int nr_pools; unsigned long it_offset; unsigned long it_blocksize; struct iommu_pool* pools; int it_map; struct iommu_pool large_pool; } ;
struct device {int dummy; } ;


 unsigned long ALIGN (unsigned long,int) ;
 unsigned long DMA_ERROR_CODE ;
 int IOMMU_PAGE_SHIFT ;
 int WARN_ON (int) ;
 int __raw_get_cpu_var (int ) ;
 unsigned long dma_get_seg_boundary (struct device*) ;
 unsigned long iommu_area_alloc (int ,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int iommu_pool_hash ;
 scalar_t__ likely (int) ;
 scalar_t__ printk_ratelimit () ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned long iommu_range_alloc(struct device *dev,
           struct iommu_table *tbl,
                                       unsigned long npages,
                                       unsigned long *handle,
                                       unsigned long mask,
                                       unsigned int align_order)
{
 unsigned long n, end, start;
 unsigned long limit;
 int largealloc = npages > 15;
 int pass = 0;
 unsigned long align_mask;
 unsigned long boundary_size;
 unsigned long flags;
 unsigned int pool_nr;
 struct iommu_pool *pool;

 align_mask = 0xffffffffffffffffl >> (64 - align_order);




 if (unlikely(npages == 0)) {
  if (printk_ratelimit())
   WARN_ON(1);
  return DMA_ERROR_CODE;
 }





 pool_nr = __raw_get_cpu_var(iommu_pool_hash) & (tbl->nr_pools - 1);

 if (largealloc)
  pool = &(tbl->large_pool);
 else
  pool = &(tbl->pools[pool_nr]);

 spin_lock_irqsave(&(pool->lock), flags);

again:
 if ((pass == 0) && handle && *handle &&
     (*handle >= pool->start) && (*handle < pool->end))
  start = *handle;
 else
  start = pool->hint;

 limit = pool->end;





 if (start >= limit)
  start = pool->start;

 if (limit + tbl->it_offset > mask) {
  limit = mask - tbl->it_offset + 1;




  if ((start & mask) >= limit || pass > 0) {
   spin_unlock(&(pool->lock));
   pool = &(tbl->pools[0]);
   spin_lock(&(pool->lock));
   start = pool->start;
  } else {
   start &= mask;
  }
 }

 if (dev)
  boundary_size = ALIGN(dma_get_seg_boundary(dev) + 1,
          1 << IOMMU_PAGE_SHIFT);
 else
  boundary_size = ALIGN(1UL << 32, 1 << IOMMU_PAGE_SHIFT);


 n = iommu_area_alloc(tbl->it_map, limit, start, npages,
        tbl->it_offset, boundary_size >> IOMMU_PAGE_SHIFT,
        align_mask);
 if (n == -1) {
  if (likely(pass == 0)) {

   pool->hint = pool->start;
   pass++;
   goto again;

  } else if (pass <= tbl->nr_pools) {

   spin_unlock(&(pool->lock));
   pool_nr = (pool_nr + 1) & (tbl->nr_pools - 1);
   pool = &tbl->pools[pool_nr];
   spin_lock(&(pool->lock));
   pool->hint = pool->start;
   pass++;
   goto again;

  } else {

   spin_unlock_irqrestore(&(pool->lock), flags);
   return DMA_ERROR_CODE;
  }
 }

 end = n + npages;


 if (largealloc) {

  pool->hint = end;
 } else {

  pool->hint = (end + tbl->it_blocksize - 1) &
                  ~(tbl->it_blocksize - 1);
 }


 if (handle)
  *handle = end;

 spin_unlock_irqrestore(&(pool->lock), flags);

 return n;
}
