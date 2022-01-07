
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sgdma_state {scalar_t__ next_sglist; void* arg; int (* callback ) (struct omap24xxcam_sgdma*,int ,void*) ;} ;
struct omap24xxcam_sgdma {int free_sgdma; int next_sgdma; int lock; struct sgdma_state* sg_state; int dma; } ;
typedef int (* sgdma_callback_t ) (struct omap24xxcam_sgdma*,int ,void*) ;


 int CAMDMA_CSR_TRANS_ERR ;
 int NUM_SG_DMA ;
 int omap24xxcam_dma_stop (int *,int ) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct omap24xxcam_sgdma*,int ,void*) ;

void omap24xxcam_sgdma_sync(struct omap24xxcam_sgdma *sgdma)
{
 unsigned long flags;
 int sgslot;
 struct sgdma_state *sg_state;
 u32 csr = CAMDMA_CSR_TRANS_ERR;


 omap24xxcam_dma_stop(&sgdma->dma, csr);

 spin_lock_irqsave(&sgdma->lock, flags);

 if (sgdma->free_sgdma < NUM_SG_DMA) {
  sgslot = (sgdma->next_sgdma + sgdma->free_sgdma) % NUM_SG_DMA;
  sg_state = sgdma->sg_state + sgslot;
  if (sg_state->next_sglist != 0) {

   sgdma_callback_t callback = sg_state->callback;
   void *arg = sg_state->arg;
   sgdma->free_sgdma++;
   if (callback) {

    spin_unlock(&sgdma->lock);
    (*callback) (sgdma, csr, arg);
    spin_lock(&sgdma->lock);
   }
  }
 }

 spin_unlock_irqrestore(&sgdma->lock, flags);
}
