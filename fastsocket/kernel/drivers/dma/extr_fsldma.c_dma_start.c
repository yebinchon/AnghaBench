
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fsl_dma_chan {int feature; TYPE_1__* reg_base; } ;
struct TYPE_2__ {int mr; int bcr; } ;


 int DMA_IN (struct fsl_dma_chan*,int *,int) ;
 int DMA_OUT (struct fsl_dma_chan*,int *,int,int) ;
 int FSL_DMA_CHAN_PAUSE_EXT ;
 int FSL_DMA_CHAN_START_EXT ;
 int FSL_DMA_IP_85XX ;
 int FSL_DMA_IP_MASK ;
 int FSL_DMA_MR_CS ;
 int FSL_DMA_MR_EMP_EN ;
 int FSL_DMA_MR_EMS_EN ;

__attribute__((used)) static void dma_start(struct fsl_dma_chan *fsl_chan)
{
 u32 mr_set = 0;

 if (fsl_chan->feature & FSL_DMA_CHAN_PAUSE_EXT) {
  DMA_OUT(fsl_chan, &fsl_chan->reg_base->bcr, 0, 32);
  mr_set |= FSL_DMA_MR_EMP_EN;
 } else if ((fsl_chan->feature & FSL_DMA_IP_MASK) == FSL_DMA_IP_85XX) {
  DMA_OUT(fsl_chan, &fsl_chan->reg_base->mr,
   DMA_IN(fsl_chan, &fsl_chan->reg_base->mr, 32)
    & ~FSL_DMA_MR_EMP_EN, 32);
 }

 if (fsl_chan->feature & FSL_DMA_CHAN_START_EXT)
  mr_set |= FSL_DMA_MR_EMS_EN;
 else
  mr_set |= FSL_DMA_MR_CS;

 DMA_OUT(fsl_chan, &fsl_chan->reg_base->mr,
   DMA_IN(fsl_chan, &fsl_chan->reg_base->mr, 32)
   | mr_set, 32);
}
