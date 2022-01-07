
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int devHandler; void* userData; } ;
typedef size_t DMA_Device_t ;
typedef int DMA_DeviceHandler_t ;
typedef TYPE_1__ DMA_DeviceAttribute_t ;


 TYPE_1__* DMA_gDeviceAttribute ;
 int ENODEV ;
 int IsDeviceValid (size_t) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

int dma_set_device_handler(DMA_Device_t dev,
      DMA_DeviceHandler_t devHandler,
      void *userData
    ) {
 DMA_DeviceAttribute_t *devAttr;
 unsigned long flags;

 if (!IsDeviceValid(dev)) {
  return -ENODEV;
 }
 devAttr = &DMA_gDeviceAttribute[dev];

 local_irq_save(flags);

 devAttr->userData = userData;
 devAttr->devHandler = devHandler;

 local_irq_restore(flags);

 return 0;
}
