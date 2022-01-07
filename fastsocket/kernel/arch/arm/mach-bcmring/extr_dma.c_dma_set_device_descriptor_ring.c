
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ prevNumBytes; scalar_t__ prevDstData; scalar_t__ prevSrcData; int ring; } ;
typedef size_t DMA_Device_t ;
typedef TYPE_1__ DMA_DeviceAttribute_t ;
typedef int DMA_DescriptorRing_t ;


 TYPE_1__* DMA_gDeviceAttribute ;
 int ENODEV ;
 int IsDeviceValid (size_t) ;
 int dma_free_descriptor_ring (int *) ;

int dma_set_device_descriptor_ring(DMA_Device_t device,
       DMA_DescriptorRing_t *ring
    ) {
 DMA_DeviceAttribute_t *devAttr;

 if (!IsDeviceValid(device)) {
  return -ENODEV;
 }
 devAttr = &DMA_gDeviceAttribute[device];



 dma_free_descriptor_ring(&devAttr->ring);

 if (ring != ((void*)0)) {


  devAttr->ring = *ring;
 }




 devAttr->prevSrcData = 0;
 devAttr->prevDstData = 0;
 devAttr->prevNumBytes = 0;

 return 0;
}
