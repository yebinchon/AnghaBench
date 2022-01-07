
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_dma_chan {int dummy; } ;


 int FSL_DMA_SR_CB ;
 int FSL_DMA_SR_CH ;
 int get_sr (struct fsl_dma_chan*) ;

__attribute__((used)) static int dma_is_idle(struct fsl_dma_chan *fsl_chan)
{
 u32 sr = get_sr(fsl_chan);
 return (!(sr & FSL_DMA_SR_CB)) || (sr & FSL_DMA_SR_CH);
}
