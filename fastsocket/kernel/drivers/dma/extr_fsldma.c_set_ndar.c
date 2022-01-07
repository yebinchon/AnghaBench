
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_dma_chan {TYPE_1__* reg_base; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int ndar; } ;


 int DMA_OUT (struct fsl_dma_chan*,int *,int ,int) ;

__attribute__((used)) static void set_ndar(struct fsl_dma_chan *fsl_chan, dma_addr_t addr)
{
 DMA_OUT(fsl_chan, &fsl_chan->reg_base->ndar, addr, 64);
}
