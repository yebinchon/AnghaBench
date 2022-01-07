
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int gfp_t ;
typedef scalar_t__ dma_addr_t ;


 void* kmalloc (size_t,int ) ;

__attribute__((used)) static void *ibmebus_alloc_coherent(struct device *dev,
        size_t size,
        dma_addr_t *dma_handle,
        gfp_t flag)
{
 void *mem;

 mem = kmalloc(size, flag);
 *dma_handle = (dma_addr_t)mem;

 return mem;
}
