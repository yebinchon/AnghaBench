
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_dma_chan {int feature; TYPE_1__* reg_base; } ;
struct TYPE_2__ {int mr; } ;


 int DMA_OUT (struct fsl_dma_chan*,int *,int,int) ;


 int FSL_DMA_IP_MASK ;
 int FSL_DMA_MR_EIE ;
 int FSL_DMA_MR_EOLNIE ;
 int FSL_DMA_MR_EOSIE ;
 int FSL_DMA_MR_EOTIE ;
 int FSL_DMA_MR_PRC_RM ;

__attribute__((used)) static void dma_init(struct fsl_dma_chan *fsl_chan)
{

 DMA_OUT(fsl_chan, &fsl_chan->reg_base->mr, 0, 32);

 switch (fsl_chan->feature & FSL_DMA_IP_MASK) {
 case 128:





  DMA_OUT(fsl_chan, &fsl_chan->reg_base->mr, FSL_DMA_MR_EIE
    | FSL_DMA_MR_EOLNIE | FSL_DMA_MR_EOSIE, 32);
  break;
 case 129:




  DMA_OUT(fsl_chan, &fsl_chan->reg_base->mr, FSL_DMA_MR_EOTIE
    | FSL_DMA_MR_PRC_RM, 32);
  break;
 }

}
