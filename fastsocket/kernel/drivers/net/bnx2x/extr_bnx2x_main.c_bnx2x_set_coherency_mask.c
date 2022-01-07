
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct bnx2x {int flags; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int DMA_BIT_MASK (int) ;
 int EIO ;
 int USING_DAC_FLAG ;
 int dev_err (struct device*,char*) ;
 scalar_t__ dma_set_coherent_mask (struct device*,int ) ;
 scalar_t__ dma_set_mask (struct device*,int ) ;

__attribute__((used)) static int bnx2x_set_coherency_mask(struct bnx2x *bp)
{
 struct device *dev = &bp->pdev->dev;

 if (dma_set_mask(dev, DMA_BIT_MASK(64)) == 0) {
  bp->flags |= USING_DAC_FLAG;
  if (dma_set_coherent_mask(dev, DMA_BIT_MASK(64)) != 0) {
   dev_err(dev, "dma_set_coherent_mask failed, aborting\n");
   return -EIO;
  }
 } else if (dma_set_mask(dev, DMA_BIT_MASK(32)) != 0) {
  dev_err(dev, "System does not support DMA, aborting\n");
  return -EIO;
 }

 return 0;
}
