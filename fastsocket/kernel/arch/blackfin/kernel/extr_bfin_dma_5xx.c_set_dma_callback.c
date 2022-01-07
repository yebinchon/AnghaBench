
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * irq_handler_t ;
struct TYPE_2__ {scalar_t__ chan_status; unsigned int irq; void* data; int device_id; } ;


 int BUG_ON (int) ;
 scalar_t__ DMA_CHANNEL_FREE ;
 int IRQF_DISABLED ;
 unsigned int MAX_DMA_CHANNELS ;
 unsigned int channel2irq (unsigned int) ;
 TYPE_1__* dma_ch ;
 int request_irq (unsigned int,int *,int ,int ,void*) ;

int set_dma_callback(unsigned int channel, irq_handler_t callback, void *data)
{
 BUG_ON(channel >= MAX_DMA_CHANNELS ||
   dma_ch[channel].chan_status == DMA_CHANNEL_FREE);

 if (callback != ((void*)0)) {
  int ret;
  unsigned int irq = channel2irq(channel);

  ret = request_irq(irq, callback, IRQF_DISABLED,
   dma_ch[channel].device_id, data);
  if (ret)
   return ret;

  dma_ch[channel].irq = irq;
  dma_ch[channel].data = data;
 }
 return 0;
}
