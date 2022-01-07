
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 void* consistent_alloc (int ,size_t,int *) ;
 int memset (void*,int ,size_t) ;

void *dma_alloc_coherent(struct device *hwdev, size_t size, dma_addr_t *dma_handle, gfp_t gfp)
{
 void *ret;

 ret = consistent_alloc(gfp, size, dma_handle);
 if (ret)
  memset(ret, 0, size);

 return ret;
}
