
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frv_dma_channel {int data; int ioaddr; int (* handler ) (struct frv_dma_channel*,int ,int ) ;} ;
typedef int irqreturn_t ;


 int CSTR ;
 int __get_DMAC (int ,int ) ;
 int frv_clear_dma_inprogress (struct frv_dma_channel*) ;
 int frv_dma_channels ;
 int stub1 (struct frv_dma_channel*,int ,int ) ;

__attribute__((used)) static irqreturn_t dma_irq_handler(int irq, void *_channel)
{
 struct frv_dma_channel *channel = _channel;

 frv_clear_dma_inprogress(channel - frv_dma_channels);
 return channel->handler(channel - frv_dma_channels,
    __get_DMAC(channel->ioaddr, CSTR),
    channel->data);

}
