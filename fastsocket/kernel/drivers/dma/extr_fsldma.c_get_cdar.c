
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_dma_chan {TYPE_1__* reg_base; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int cdar; } ;


 int DMA_IN (struct fsl_dma_chan*,int *,int) ;
 int FSL_DMA_SNEN ;

__attribute__((used)) static dma_addr_t get_cdar(struct fsl_dma_chan *fsl_chan)
{
 return DMA_IN(fsl_chan, &fsl_chan->reg_base->cdar, 64) & ~FSL_DMA_SNEN;
}
