
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int pr_debug (char*,void*,int ) ;
 int vfree (void*) ;

void dma_free_coherent(struct device *dev, size_t size,
         void *addr, dma_addr_t handle)
{
 pr_debug("dma_free_coherent: %p, %x\n", addr, handle);
 vfree(addr);
}
