
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DMA_Device_t ;


 scalar_t__ DMA_NUM_DEVICE_ENTRIES ;

__attribute__((used)) static inline int IsDeviceValid(DMA_Device_t device)
{
 return (device >= 0) && (device < DMA_NUM_DEVICE_ENTRIES);
}
