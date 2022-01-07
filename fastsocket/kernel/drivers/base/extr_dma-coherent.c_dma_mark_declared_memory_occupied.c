
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_coherent_mem {size_t device_base; void* virt_base; int bitmap; } ;
struct device {struct dma_coherent_mem* dma_mem; } ;
typedef size_t dma_addr_t ;


 int EINVAL ;
 void* ERR_PTR (int) ;
 size_t PAGE_MASK ;
 size_t PAGE_SHIFT ;
 int bitmap_allocate_region (int ,int,int ) ;
 int get_order (size_t) ;

void *dma_mark_declared_memory_occupied(struct device *dev,
     dma_addr_t device_addr, size_t size)
{
 struct dma_coherent_mem *mem = dev->dma_mem;
 int pos, err;

 size += device_addr & ~PAGE_MASK;

 if (!mem)
  return ERR_PTR(-EINVAL);

 pos = (device_addr - mem->device_base) >> PAGE_SHIFT;
 err = bitmap_allocate_region(mem->bitmap, pos, get_order(size));
 if (err != 0)
  return ERR_PTR(err);
 return mem->virt_base + (pos << PAGE_SHIFT);
}
