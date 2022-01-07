
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_dma_chan {int tasklet; int dev; int id; } ;
typedef int irqreturn_t ;


 int FSL_DMA_SR_CB ;
 int FSL_DMA_SR_CH ;
 int FSL_DMA_SR_EOCDI ;
 int FSL_DMA_SR_EOLNI ;
 int FSL_DMA_SR_EOSI ;
 int FSL_DMA_SR_PE ;
 int FSL_DMA_SR_TE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 int fsl_chan_xfer_ld_queue (struct fsl_dma_chan*) ;
 int fsl_dma_update_completed_cookie (struct fsl_dma_chan*) ;
 scalar_t__ get_bcr (struct fsl_dma_chan*) ;
 scalar_t__ get_cdar (struct fsl_dma_chan*) ;
 scalar_t__ get_ndar (struct fsl_dma_chan*) ;
 int get_sr (struct fsl_dma_chan*) ;
 int set_sr (struct fsl_dma_chan*,int) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t fsl_dma_chan_do_interrupt(int irq, void *data)
{
 struct fsl_dma_chan *fsl_chan = (struct fsl_dma_chan *)data;
 u32 stat;
 int update_cookie = 0;
 int xfer_ld_q = 0;

 stat = get_sr(fsl_chan);
 dev_dbg(fsl_chan->dev, "event: channel %d, stat = 0x%x\n",
      fsl_chan->id, stat);
 set_sr(fsl_chan, stat);

 stat &= ~(FSL_DMA_SR_CB | FSL_DMA_SR_CH);
 if (!stat)
  return IRQ_NONE;

 if (stat & FSL_DMA_SR_TE)
  dev_err(fsl_chan->dev, "Transfer Error!\n");





 if (stat & FSL_DMA_SR_PE) {
  dev_dbg(fsl_chan->dev, "event: Programming Error INT\n");
  if (get_bcr(fsl_chan) == 0) {




   update_cookie = 1;
   xfer_ld_q = 1;
  }
  stat &= ~FSL_DMA_SR_PE;
 }




 if (stat & FSL_DMA_SR_EOSI) {
  dev_dbg(fsl_chan->dev, "event: End-of-segments INT\n");
  dev_dbg(fsl_chan->dev, "event: clndar 0x%llx, nlndar 0x%llx\n",
   (unsigned long long)get_cdar(fsl_chan),
   (unsigned long long)get_ndar(fsl_chan));
  stat &= ~FSL_DMA_SR_EOSI;
  update_cookie = 1;
 }




 if (stat & FSL_DMA_SR_EOCDI) {
  dev_dbg(fsl_chan->dev, "event: End-of-Chain link INT\n");
  stat &= ~FSL_DMA_SR_EOCDI;
  update_cookie = 1;
  xfer_ld_q = 1;
 }





 if (stat & FSL_DMA_SR_EOLNI) {
  dev_dbg(fsl_chan->dev, "event: End-of-link INT\n");
  stat &= ~FSL_DMA_SR_EOLNI;
  xfer_ld_q = 1;
 }

 if (update_cookie)
  fsl_dma_update_completed_cookie(fsl_chan);
 if (xfer_ld_q)
  fsl_chan_xfer_ld_queue(fsl_chan);
 if (stat)
  dev_dbg(fsl_chan->dev, "event: unhandled sr 0x%02x\n",
     stat);

 dev_dbg(fsl_chan->dev, "event: Exit\n");
 tasklet_schedule(&fsl_chan->tasklet);
 return IRQ_HANDLED;
}
