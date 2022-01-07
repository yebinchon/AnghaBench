
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int GFP_KERNEL ;
 void* dma_alloc_coherent (struct device*,size_t,int *,int ) ;
 int dma_free_coherent (struct device*,size_t,void*,int ) ;
 void* kcalloc (size_t,size_t,int ) ;
 int memset (void*,int ,size_t) ;

__attribute__((used)) static void *alloc_ring(struct device *dev, size_t nelem, size_t elem_size,
   size_t sw_size, dma_addr_t *phys, void *metadata,
   size_t stat_size)
{
 size_t len = nelem * elem_size + stat_size;
 void *s = ((void*)0);
 void *p = dma_alloc_coherent(dev, len, phys, GFP_KERNEL);

 if (!p)
  return ((void*)0);
 if (sw_size) {
  s = kcalloc(nelem, sw_size, GFP_KERNEL);

  if (!s) {
   dma_free_coherent(dev, len, p, *phys);
   return ((void*)0);
  }
 }
 if (metadata)
  *(void **)metadata = s;
 memset(p, 0, len);
 return p;
}
