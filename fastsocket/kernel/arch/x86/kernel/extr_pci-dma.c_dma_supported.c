
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dma_map_ops {int (* dma_supported ) (struct device*,int) ;} ;
struct device {int dummy; } ;


 int DMA_BIT_MASK (int) ;
 int dev_info (struct device*,char*,...) ;
 scalar_t__ forbid_dac ;
 struct dma_map_ops* get_dma_ops (struct device*) ;
 scalar_t__ iommu_sac_force ;
 int stub1 (struct device*,int) ;

int dma_supported(struct device *dev, u64 mask)
{
 struct dma_map_ops *ops = get_dma_ops(dev);
 if (ops->dma_supported)
  return ops->dma_supported(dev, mask);




 if (mask < DMA_BIT_MASK(24))
  return 0;
 if (iommu_sac_force && (mask >= DMA_BIT_MASK(40))) {
  dev_info(dev, "Force SAC with mask %Lx\n", mask);
  return 0;
 }

 return 1;
}
