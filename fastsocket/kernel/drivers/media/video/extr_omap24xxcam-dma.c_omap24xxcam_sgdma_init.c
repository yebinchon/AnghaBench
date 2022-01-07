
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap24xxcam_sgdma {int free_sgdma; int reset_timer; int dma; TYPE_1__* sg_state; scalar_t__ next_sgdma; int lock; } ;
struct TYPE_2__ {int * arg; int * callback; scalar_t__ csr; scalar_t__ queued_sglist; scalar_t__ bytes_read; scalar_t__ next_sglist; scalar_t__ sglen; } ;


 int NUM_SG_DMA ;
 int omap24xxcam_dma_init (int *,unsigned long) ;
 int setup_timer (int *,void (*) (unsigned long),unsigned long) ;
 int spin_lock_init (int *) ;

void omap24xxcam_sgdma_init(struct omap24xxcam_sgdma *sgdma,
       unsigned long base,
       void (*reset_callback)(unsigned long data),
       unsigned long reset_callback_data)
{
 int sg;

 spin_lock_init(&sgdma->lock);
 sgdma->free_sgdma = NUM_SG_DMA;
 sgdma->next_sgdma = 0;
 for (sg = 0; sg < NUM_SG_DMA; sg++) {
  sgdma->sg_state[sg].sglen = 0;
  sgdma->sg_state[sg].next_sglist = 0;
  sgdma->sg_state[sg].bytes_read = 0;
  sgdma->sg_state[sg].queued_sglist = 0;
  sgdma->sg_state[sg].csr = 0;
  sgdma->sg_state[sg].callback = ((void*)0);
  sgdma->sg_state[sg].arg = ((void*)0);
 }

 omap24xxcam_dma_init(&sgdma->dma, base);
 setup_timer(&sgdma->reset_timer, reset_callback, reset_callback_data);
}
