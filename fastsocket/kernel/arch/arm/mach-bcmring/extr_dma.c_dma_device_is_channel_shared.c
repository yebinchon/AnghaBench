
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef size_t DMA_Device_t ;
typedef TYPE_1__ DMA_DeviceAttribute_t ;


 int DMA_DEVICE_FLAG_IS_DEDICATED ;
 TYPE_1__* DMA_gDeviceAttribute ;
 int ENODEV ;
 int IsDeviceValid (size_t) ;

int dma_device_is_channel_shared(DMA_Device_t device
    ) {
 DMA_DeviceAttribute_t *devAttr;

 if (!IsDeviceValid(device)) {
  return -ENODEV;
 }
 devAttr = &DMA_gDeviceAttribute[device];

 return ((devAttr->flags & DMA_DEVICE_FLAG_IS_DEDICATED) == 0);
}
