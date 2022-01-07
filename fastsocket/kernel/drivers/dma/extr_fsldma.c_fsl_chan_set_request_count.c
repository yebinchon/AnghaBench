
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_dma_chan {TYPE_1__* reg_base; } ;
struct TYPE_2__ {int mr; } ;


 int BUG_ON (int) ;
 int DMA_IN (struct fsl_dma_chan*,int *,int) ;
 int DMA_OUT (struct fsl_dma_chan*,int *,int,int) ;
 int __ilog2 (int) ;

__attribute__((used)) static void fsl_chan_set_request_count(struct fsl_dma_chan *fsl_chan, int size)
{
 BUG_ON(size > 1024);
 DMA_OUT(fsl_chan, &fsl_chan->reg_base->mr,
  DMA_IN(fsl_chan, &fsl_chan->reg_base->mr, 32)
   | ((__ilog2(size) << 24) & 0x0f000000),
  32);
}
