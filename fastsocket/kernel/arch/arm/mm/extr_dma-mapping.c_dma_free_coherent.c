
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 scalar_t__ dma_release_from_coherent (struct device*,int ,void*) ;
 int get_order (size_t) ;
 int kfree (void*) ;

void dma_free_coherent(struct device *dev, size_t size, void *cpu_addr, dma_addr_t handle)
{
 if (dma_release_from_coherent(dev, get_order(size), cpu_addr))
  return;
 kfree(cpu_addr);
}
