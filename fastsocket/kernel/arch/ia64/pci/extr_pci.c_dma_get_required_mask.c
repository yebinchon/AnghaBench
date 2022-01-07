
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int dummy; } ;


 int platform_dma_get_required_mask (struct device*) ;

u64 dma_get_required_mask(struct device *dev)
{
 return platform_dma_get_required_mask(dev);
}
