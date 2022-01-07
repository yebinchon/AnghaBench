
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ chan_status; int dmalock; int data; scalar_t__ irq; } ;


 int BUG_ON (int) ;
 scalar_t__ DMA_CHANNEL_FREE ;
 unsigned int MAX_DMA_CHANNELS ;
 int clear_dma_buffer (unsigned int) ;
 int disable_dma (unsigned int) ;
 TYPE_1__* dma_ch ;
 int free_irq (scalar_t__,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*) ;

void free_dma(unsigned int channel)
{
 pr_debug("freedma() : BEGIN \n");
 BUG_ON(channel >= MAX_DMA_CHANNELS ||
   dma_ch[channel].chan_status == DMA_CHANNEL_FREE);


 disable_dma(channel);
 clear_dma_buffer(channel);

 if (dma_ch[channel].irq)
  free_irq(dma_ch[channel].irq, dma_ch[channel].data);


 mutex_lock(&(dma_ch[channel].dmalock));
 dma_ch[channel].chan_status = DMA_CHANNEL_FREE;
 mutex_unlock(&(dma_ch[channel].dmalock));

 pr_debug("freedma() : END \n");
}
