
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_dma_chan {TYPE_1__* reg_base; } ;
struct TYPE_2__ {int mr; } ;


 int DMA_IN (struct fsl_dma_chan*,int *,int) ;
 int DMA_OUT (struct fsl_dma_chan*,int *,int,int) ;
 int FSL_DMA_MR_DAHE ;
 int __ilog2 (int) ;

__attribute__((used)) static void fsl_chan_set_dest_loop_size(struct fsl_dma_chan *fsl_chan, int size)
{
 switch (size) {
 case 0:
  DMA_OUT(fsl_chan, &fsl_chan->reg_base->mr,
   DMA_IN(fsl_chan, &fsl_chan->reg_base->mr, 32) &
   (~FSL_DMA_MR_DAHE), 32);
  break;
 case 1:
 case 2:
 case 4:
 case 8:
  DMA_OUT(fsl_chan, &fsl_chan->reg_base->mr,
   DMA_IN(fsl_chan, &fsl_chan->reg_base->mr, 32) |
   FSL_DMA_MR_DAHE | (__ilog2(size) << 16),
   32);
  break;
 }
}
