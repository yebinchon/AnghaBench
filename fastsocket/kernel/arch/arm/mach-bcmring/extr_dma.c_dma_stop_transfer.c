
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dmacHwHandle; } ;
typedef int DMA_Handle_t ;
typedef TYPE_1__ DMA_Channel_t ;


 int ENODEV ;
 TYPE_1__* HandleToChannel (int ) ;
 int dmacHw_stopTransfer (int ) ;

int dma_stop_transfer(DMA_Handle_t handle)
{
 DMA_Channel_t *channel;

 channel = HandleToChannel(handle);
 if (channel == ((void*)0)) {
  return -ENODEV;
 }

 dmacHw_stopTransfer(channel->dmacHwHandle);

 return 0;
}
