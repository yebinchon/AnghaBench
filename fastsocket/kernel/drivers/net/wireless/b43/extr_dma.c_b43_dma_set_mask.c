
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct b43_wldev {int wl; TYPE_1__* dev; } ;
struct TYPE_2__ {int dma_dev; } ;


 scalar_t__ DMA_BIT_MASK (int) ;
 int EOPNOTSUPP ;
 int b43err (int ,char*,unsigned int) ;
 int b43info (int ,char*,unsigned int,unsigned int) ;
 scalar_t__ dma_mask_to_engine_type (scalar_t__) ;
 int dma_set_coherent_mask (int ,scalar_t__) ;
 int dma_set_mask (int ,scalar_t__) ;

__attribute__((used)) static int b43_dma_set_mask(struct b43_wldev *dev, u64 mask)
{
 u64 orig_mask = mask;
 bool fallback = 0;
 int err;



 while (1) {
  err = dma_set_mask(dev->dev->dma_dev, mask);
  if (!err) {
   err = dma_set_coherent_mask(dev->dev->dma_dev, mask);
   if (!err)
    break;
  }
  if (mask == DMA_BIT_MASK(64)) {
   mask = DMA_BIT_MASK(32);
   fallback = 1;
   continue;
  }
  if (mask == DMA_BIT_MASK(32)) {
   mask = DMA_BIT_MASK(30);
   fallback = 1;
   continue;
  }
  b43err(dev->wl, "The machine/kernel does not support "
         "the required %u-bit DMA mask\n",
         (unsigned int)dma_mask_to_engine_type(orig_mask));
  return -EOPNOTSUPP;
 }
 if (fallback) {
  b43info(dev->wl, "DMA mask fallback from %u-bit to %u-bit\n",
   (unsigned int)dma_mask_to_engine_type(orig_mask),
   (unsigned int)dma_mask_to_engine_type(mask));
 }

 return 0;
}
