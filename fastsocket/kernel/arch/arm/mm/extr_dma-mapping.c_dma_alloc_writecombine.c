
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 void* __dma_alloc (struct device*,size_t,int *,int ,int ) ;
 int pgprot_kernel ;
 int pgprot_writecombine (int ) ;

void *
dma_alloc_writecombine(struct device *dev, size_t size, dma_addr_t *handle, gfp_t gfp)
{
 return __dma_alloc(dev, size, handle, gfp,
      pgprot_writecombine(pgprot_kernel));
}
