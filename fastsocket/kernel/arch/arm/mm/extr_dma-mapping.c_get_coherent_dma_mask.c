
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int coherent_dma_mask; } ;


 int ISA_DMA_THRESHOLD ;
 int dev_warn (struct device*,char*,...) ;

__attribute__((used)) static u64 get_coherent_dma_mask(struct device *dev)
{
 u64 mask = ISA_DMA_THRESHOLD;

 if (dev) {
  mask = dev->coherent_dma_mask;





  if (mask == 0) {
   dev_warn(dev, "coherent DMA mask is unset\n");
   return 0;
  }

  if ((~mask) & ISA_DMA_THRESHOLD) {
   dev_warn(dev, "coherent DMA mask %#llx is smaller "
     "than system GFP_DMA mask %#llx\n",
     mask, (unsigned long long)ISA_DMA_THRESHOLD);
   return 0;
  }
 }

 return mask;
}
