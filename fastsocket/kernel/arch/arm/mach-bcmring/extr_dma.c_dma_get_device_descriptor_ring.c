
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ring; } ;
typedef size_t DMA_Device_t ;
typedef TYPE_1__ DMA_DeviceAttribute_t ;
typedef int DMA_DescriptorRing_t ;


 TYPE_1__* DMA_gDeviceAttribute ;
 int ENODEV ;
 int IsDeviceValid (size_t) ;
 int memset (int *,int ,int) ;

int dma_get_device_descriptor_ring(DMA_Device_t device,
       DMA_DescriptorRing_t *ring
    ) {
 DMA_DeviceAttribute_t *devAttr;

 memset(ring, 0, sizeof(*ring));

 if (!IsDeviceValid(device)) {
  return -ENODEV;
 }
 devAttr = &DMA_gDeviceAttribute[device];

 *ring = devAttr->ring;

 return 0;
}
