
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int * dma_mask; } ;
struct TYPE_2__ {int (* dma_supported ) (struct device*,int ) ;} ;


 TYPE_1__ sba_dma_ops ;
 int stub1 (struct device*,int ) ;

__attribute__((used)) static inline int use_swiotlb(struct device *dev)
{
 return dev && dev->dma_mask &&
  !sba_dma_ops.dma_supported(dev, *dev->dma_mask);
}
