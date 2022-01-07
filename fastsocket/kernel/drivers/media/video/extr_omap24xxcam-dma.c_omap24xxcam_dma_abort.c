
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omap24xxcam_dma {int next_dmach; int free_dmach; int lock; TYPE_1__* ch_state; int base; } ;
typedef int (* dma_callback_t ) (struct omap24xxcam_dma*,int ,void*) ;
struct TYPE_2__ {void* arg; int (* callback ) (struct omap24xxcam_dma*,int ,void*) ;} ;


 int NUM_CAMDMA_CHANNELS ;
 int omap24xxcam_dmahw_abort_ch (int ,int) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct omap24xxcam_dma*,int ,void*) ;

__attribute__((used)) static void omap24xxcam_dma_abort(struct omap24xxcam_dma *dma, u32 csr)
{
 unsigned long flags;
 int dmach, i, free_dmach;
 dma_callback_t callback;
 void *arg;

 spin_lock_irqsave(&dma->lock, flags);


 dmach = (dma->next_dmach + dma->free_dmach) % NUM_CAMDMA_CHANNELS;
 for (i = 0; i < NUM_CAMDMA_CHANNELS; i++) {
  omap24xxcam_dmahw_abort_ch(dma->base, dmach);
  dmach = (dmach + 1) % NUM_CAMDMA_CHANNELS;
 }





 free_dmach = dma->free_dmach;
 while ((dma->free_dmach < NUM_CAMDMA_CHANNELS) &&
        (free_dmach < NUM_CAMDMA_CHANNELS)) {
  dmach = (dma->next_dmach + dma->free_dmach)
   % NUM_CAMDMA_CHANNELS;
  callback = dma->ch_state[dmach].callback;
  arg = dma->ch_state[dmach].arg;
  dma->free_dmach++;
  free_dmach++;
  if (callback) {

   spin_unlock(&dma->lock);
   (*callback) (dma, csr, arg);
   spin_lock(&dma->lock);
  }
 }

 spin_unlock_irqrestore(&dma->lock, flags);
}
