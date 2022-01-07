
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_dma_chan {int feature; } ;


 int FSL_DMA_CHAN_PAUSE_EXT ;

__attribute__((used)) static void fsl_chan_toggle_ext_pause(struct fsl_dma_chan *fsl_chan, int enable)
{
 if (enable)
  fsl_chan->feature |= FSL_DMA_CHAN_PAUSE_EXT;
 else
  fsl_chan->feature &= ~FSL_DMA_CHAN_PAUSE_EXT;
}
