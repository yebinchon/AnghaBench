
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {size_t devType; int dmacHwHandle; } ;
struct TYPE_6__ {int virtAddr; } ;
struct TYPE_7__ {TYPE_1__ ring; int config; } ;
typedef int DMA_Handle_t ;
typedef TYPE_2__ DMA_DeviceAttribute_t ;
typedef TYPE_3__ DMA_Channel_t ;


 TYPE_2__* DMA_gDeviceAttribute ;
 int ENODEV ;
 TYPE_3__* HandleToChannel (int ) ;
 int dmacHw_initiateTransfer (int ,int *,int ) ;

int dma_start_transfer(DMA_Handle_t handle)
{
 DMA_Channel_t *channel;
 DMA_DeviceAttribute_t *devAttr;

 channel = HandleToChannel(handle);
 if (channel == ((void*)0)) {
  return -ENODEV;
 }
 devAttr = &DMA_gDeviceAttribute[channel->devType];

 dmacHw_initiateTransfer(channel->dmacHwHandle, &devAttr->config,
    devAttr->ring.virtAddr);



 return 0;
}
