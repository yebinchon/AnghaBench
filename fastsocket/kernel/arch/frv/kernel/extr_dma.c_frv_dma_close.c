
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frv_dma_channel {int flags; int irq; } ;


 int FRV_DMA_FLAGS_INUSE ;
 int free_irq (int ,struct frv_dma_channel*) ;
 struct frv_dma_channel* frv_dma_channels ;
 int frv_dma_channels_lock ;
 int frv_dma_stop (int) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

void frv_dma_close(int dma)
{
 struct frv_dma_channel *channel = &frv_dma_channels[dma];
 unsigned long flags;

 write_lock_irqsave(&frv_dma_channels_lock, flags);

 free_irq(channel->irq, channel);
 frv_dma_stop(dma);

 channel->flags &= ~FRV_DMA_FLAGS_INUSE;

 write_unlock_irqrestore(&frv_dma_channels_lock, flags);
}
