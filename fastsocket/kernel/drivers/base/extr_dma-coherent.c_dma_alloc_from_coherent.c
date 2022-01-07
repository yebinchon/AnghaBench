
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_coherent_mem {int size; int flags; void* virt_base; scalar_t__ device_base; int bitmap; } ;
struct device {struct dma_coherent_mem* dma_mem; } ;
typedef int ssize_t ;
typedef scalar_t__ dma_addr_t ;


 int DMA_MEMORY_EXCLUSIVE ;
 int PAGE_SHIFT ;
 int bitmap_find_free_region (int ,int,int) ;
 int get_order (int) ;
 int memset (void*,int ,int) ;
 scalar_t__ unlikely (int) ;

int dma_alloc_from_coherent(struct device *dev, ssize_t size,
           dma_addr_t *dma_handle, void **ret)
{
 struct dma_coherent_mem *mem;
 int order = get_order(size);
 int pageno;

 if (!dev)
  return 0;
 mem = dev->dma_mem;
 if (!mem)
  return 0;

 *ret = ((void*)0);

 if (unlikely(size > (mem->size << PAGE_SHIFT)))
  goto err;

 pageno = bitmap_find_free_region(mem->bitmap, mem->size, order);
 if (unlikely(pageno < 0))
  goto err;




 *dma_handle = mem->device_base + (pageno << PAGE_SHIFT);
 *ret = mem->virt_base + (pageno << PAGE_SHIFT);
 memset(*ret, 0, size);

 return 1;

err:





 return mem->flags & DMA_MEMORY_EXCLUSIVE;
}
