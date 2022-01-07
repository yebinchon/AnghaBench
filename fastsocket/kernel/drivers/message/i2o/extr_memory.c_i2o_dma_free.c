
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2o_dma {int * virt; scalar_t__ phys; int len; } ;
struct device {int dummy; } ;


 int dma_free_coherent (struct device*,int ,int *,scalar_t__) ;
 int kfree (int *) ;

void i2o_dma_free(struct device *dev, struct i2o_dma *addr)
{
 if (addr->virt) {
  if (addr->phys)
   dma_free_coherent(dev, addr->len, addr->virt,
       addr->phys);
  else
   kfree(addr->virt);
  addr->virt = ((void*)0);
 }
}
