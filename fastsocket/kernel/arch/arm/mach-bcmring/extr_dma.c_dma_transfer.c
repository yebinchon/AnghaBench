
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ dmacHw_TRANSFER_TYPE_e ;
typedef int dma_addr_t ;
struct TYPE_10__ {scalar_t__ transferType; } ;
struct TYPE_9__ {size_t devType; int dmacHwHandle; } ;
struct TYPE_7__ {int virtAddr; } ;
struct TYPE_8__ {size_t numBytes; TYPE_1__ ring; TYPE_4__ config; int transferStartTime; } ;
typedef int DMA_Handle_t ;
typedef TYPE_2__ DMA_DeviceAttribute_t ;
typedef TYPE_3__ DMA_Channel_t ;


 TYPE_2__* DMA_gDeviceAttribute ;
 int EINVAL ;
 int ENODEV ;
 TYPE_3__* HandleToChannel (int ) ;
 int dma_alloc_descriptors (int ,scalar_t__,int ,int ,size_t) ;
 int dmacHw_initiateTransfer (int ,TYPE_4__*,int ) ;
 int timer_get_tick_count () ;

int dma_transfer(DMA_Handle_t handle,
   dmacHw_TRANSFER_TYPE_e transferType,
   dma_addr_t srcData,
   dma_addr_t dstData,
   size_t numBytes
    ) {
 DMA_Channel_t *channel;
 DMA_DeviceAttribute_t *devAttr;
 int rc = 0;

 channel = HandleToChannel(handle);
 if (channel == ((void*)0)) {
  return -ENODEV;
 }

 devAttr = &DMA_gDeviceAttribute[channel->devType];

 if (devAttr->config.transferType != transferType) {
  return -EINVAL;
 }





 {
  rc =
       dma_alloc_descriptors(handle, transferType, srcData,
        dstData, numBytes);
  if (rc != 0) {
   return rc;
  }
 }



 devAttr->numBytes = numBytes;
 devAttr->transferStartTime = timer_get_tick_count();

 dmacHw_initiateTransfer(channel->dmacHwHandle, &devAttr->config,
    devAttr->ring.virtAddr);



 return 0;
}
