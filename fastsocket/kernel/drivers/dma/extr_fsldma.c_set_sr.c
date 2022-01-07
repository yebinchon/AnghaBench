
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fsl_dma_chan {TYPE_1__* reg_base; } ;
struct TYPE_2__ {int sr; } ;


 int DMA_OUT (struct fsl_dma_chan*,int *,int ,int) ;

__attribute__((used)) static void set_sr(struct fsl_dma_chan *fsl_chan, u32 val)
{
 DMA_OUT(fsl_chan, &fsl_chan->reg_base->sr, val, 32);
}
