
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2o_dma {int dummy; } ;
struct device {int dummy; } ;


 int i2o_dma_alloc (struct device*,struct i2o_dma*,size_t) ;
 int i2o_dma_free (struct device*,struct i2o_dma*) ;

int i2o_dma_realloc(struct device *dev, struct i2o_dma *addr, size_t len)
{
 i2o_dma_free(dev, addr);

 if (len)
  return i2o_dma_alloc(dev, addr, len);

 return 0;
}
