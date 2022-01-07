
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_channel {int dar; int count; int mode; scalar_t__ sar; } ;


 int DMA_MODE_MASK ;
 int EINVAL ;
 int PVR2_DMA_ADDR ;
 int PVR2_DMA_COUNT ;
 int PVR2_DMA_MODE ;
 int ctrl_outl (int,int ) ;
 scalar_t__ xfer_complete ;

__attribute__((used)) static int pvr2_xfer_dma(struct dma_channel *chan)
{
 if (chan->sar || !chan->dar)
  return -EINVAL;

 xfer_complete = 0;

 ctrl_outl(chan->dar, PVR2_DMA_ADDR);
 ctrl_outl(chan->count, PVR2_DMA_COUNT);
 ctrl_outl(chan->mode & DMA_MODE_MASK, PVR2_DMA_MODE);

 return 0;
}
