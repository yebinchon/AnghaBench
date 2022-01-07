
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omap24xxcam_dma {int free_dmach; int next_dmach; int lock; int base; TYPE_1__* ch_state; int dma_stop; } ;
typedef int dma_callback_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {void* arg; int callback; } ;


 int EBUSY ;
 int NUM_CAMDMA_CHANNELS ;
 scalar_t__ atomic_read (int *) ;
 int omap24xxcam_dmahw_transfer_chain (int ,int,int) ;
 int omap24xxcam_dmahw_transfer_setup (int ,int,int ,int ) ;
 int omap24xxcam_dmahw_transfer_start (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int omap24xxcam_dma_start(struct omap24xxcam_dma *dma, dma_addr_t start,
     u32 len, dma_callback_t callback, void *arg)
{
 unsigned long flags;
 int dmach;

 spin_lock_irqsave(&dma->lock, flags);

 if (!dma->free_dmach || atomic_read(&dma->dma_stop)) {
  spin_unlock_irqrestore(&dma->lock, flags);
  return -EBUSY;
 }

 dmach = dma->next_dmach;

 dma->ch_state[dmach].callback = callback;
 dma->ch_state[dmach].arg = arg;

 omap24xxcam_dmahw_transfer_setup(dma->base, dmach, start, len);



 if (dma->free_dmach < NUM_CAMDMA_CHANNELS) {

  omap24xxcam_dmahw_transfer_chain(dma->base, dmach,
       dma->free_dmach);
 } else {



  omap24xxcam_dmahw_transfer_start(dma->base, dmach);
 }

 dma->next_dmach = (dma->next_dmach + 1) % NUM_CAMDMA_CHANNELS;
 dma->free_dmach--;

 spin_unlock_irqrestore(&dma->lock, flags);

 return 0;
}
