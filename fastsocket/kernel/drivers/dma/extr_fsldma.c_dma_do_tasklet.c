
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_dma_chan {int dummy; } ;


 int fsl_chan_ld_cleanup (struct fsl_dma_chan*) ;

__attribute__((used)) static void dma_do_tasklet(unsigned long data)
{
 struct fsl_dma_chan *fsl_chan = (struct fsl_dma_chan *)data;
 fsl_chan_ld_cleanup(fsl_chan);
}
