
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct dma_map_ops {int (* set_dma_mask ) (struct device*,int ) ;} ;
struct device {int * dma_mask; } ;
struct TYPE_2__ {int (* dma_set_mask ) (struct device*,int ) ;} ;


 int EIO ;
 int dma_supported (struct device*,int ) ;
 struct dma_map_ops* get_dma_ops (struct device*) ;
 TYPE_1__ ppc_md ;
 int stub1 (struct device*,int ) ;
 int stub2 (struct device*,int ) ;
 scalar_t__ unlikely (int ) ;

int dma_set_mask(struct device *dev, u64 dma_mask)
{
 struct dma_map_ops *dma_ops = get_dma_ops(dev);

 if (ppc_md.dma_set_mask)
  return ppc_md.dma_set_mask(dev, dma_mask);
 if (unlikely(dma_ops == ((void*)0)))
  return -EIO;
 if (dma_ops->set_dma_mask != ((void*)0))
  return dma_ops->set_dma_mask(dev, dma_mask);
 if (!dev->dma_mask || !dma_supported(dev, dma_mask))
  return -EIO;
 *dev->dma_mask = dma_mask;
 return 0;
}
