
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap24xxcam_dma {unsigned long base; int free_dmach; TYPE_1__* ch_state; scalar_t__ next_dmach; int lock; } ;
struct TYPE_2__ {int * arg; int * callback; } ;


 int NUM_CAMDMA_CHANNELS ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void omap24xxcam_dma_init(struct omap24xxcam_dma *dma,
     unsigned long base)
{
 int ch;


 spin_lock_init(&dma->lock);
 dma->base = base;
 dma->free_dmach = NUM_CAMDMA_CHANNELS;
 dma->next_dmach = 0;
 for (ch = 0; ch < NUM_CAMDMA_CHANNELS; ch++) {
  dma->ch_state[ch].callback = ((void*)0);
  dma->ch_state[ch].arg = ((void*)0);
 }
}
