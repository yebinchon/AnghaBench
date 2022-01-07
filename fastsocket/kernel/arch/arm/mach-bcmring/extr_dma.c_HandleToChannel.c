
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* controller; } ;
struct TYPE_3__ {int * channel; } ;
typedef int DMA_Handle_t ;
typedef int DMA_Channel_t ;


 int CHANNEL_FROM_HANDLE (int ) ;
 int CONTROLLER_FROM_HANDLE (int ) ;
 int DMA_NUM_CHANNELS ;
 int DMA_NUM_CONTROLLERS ;
 TYPE_2__ gDMA ;

__attribute__((used)) static inline DMA_Channel_t *HandleToChannel(DMA_Handle_t handle)
{
 int controllerIdx;
 int channelIdx;

 controllerIdx = CONTROLLER_FROM_HANDLE(handle);
 channelIdx = CHANNEL_FROM_HANDLE(handle);

 if ((controllerIdx > DMA_NUM_CONTROLLERS)
     || (channelIdx > DMA_NUM_CHANNELS)) {
  return ((void*)0);
 }
 return &gDMA.controller[controllerIdx].channel[channelIdx];
}
