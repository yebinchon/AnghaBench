
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_map_ops {int dummy; } ;
struct device {int dummy; } ;


 struct dma_map_ops sba_dma_ops ;
 struct dma_map_ops swiotlb_dma_ops ;
 scalar_t__ use_swiotlb (struct device*) ;

struct dma_map_ops *hwsw_dma_get_ops(struct device *dev)
{
 if (use_swiotlb(dev))
  return &swiotlb_dma_ops;
 return &sba_dma_ops;
}
