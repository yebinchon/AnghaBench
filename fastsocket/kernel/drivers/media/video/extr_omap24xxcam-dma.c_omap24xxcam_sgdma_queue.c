
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sgdma_state {int sglen; int len; void* arg; int callback; scalar_t__ csr; scalar_t__ queued_sglist; scalar_t__ bytes_read; scalar_t__ next_sglist; struct scatterlist const* sglist; } ;
struct scatterlist {int dummy; } ;
struct omap24xxcam_sgdma {int next_sgdma; int lock; int free_sgdma; struct sgdma_state* sg_state; } ;
typedef int sgdma_callback_t ;


 int EBUSY ;
 int EINVAL ;
 int NUM_SG_DMA ;
 int omap24xxcam_sgdma_process (struct omap24xxcam_sgdma*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int omap24xxcam_sgdma_queue(struct omap24xxcam_sgdma *sgdma,
       const struct scatterlist *sglist, int sglen,
       int len, sgdma_callback_t callback, void *arg)
{
 unsigned long flags;
 struct sgdma_state *sg_state;

 if ((sglen < 0) || ((sglen > 0) & !sglist))
  return -EINVAL;

 spin_lock_irqsave(&sgdma->lock, flags);

 if (!sgdma->free_sgdma) {
  spin_unlock_irqrestore(&sgdma->lock, flags);
  return -EBUSY;
 }

 sg_state = sgdma->sg_state + sgdma->next_sgdma;

 sg_state->sglist = sglist;
 sg_state->sglen = sglen;
 sg_state->next_sglist = 0;
 sg_state->bytes_read = 0;
 sg_state->len = len;
 sg_state->queued_sglist = 0;
 sg_state->csr = 0;
 sg_state->callback = callback;
 sg_state->arg = arg;

 sgdma->next_sgdma = (sgdma->next_sgdma + 1) % NUM_SG_DMA;
 sgdma->free_sgdma--;

 spin_unlock_irqrestore(&sgdma->lock, flags);

 omap24xxcam_sgdma_process(sgdma);

 return 0;
}
