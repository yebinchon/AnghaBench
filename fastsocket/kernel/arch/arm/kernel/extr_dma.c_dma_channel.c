
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dma_t ;


 unsigned int MAX_DMA_CHANNELS ;
 int ** dma_chan ;

__attribute__((used)) static inline dma_t *dma_channel(unsigned int chan)
{
 if (chan >= MAX_DMA_CHANNELS)
  return ((void*)0);

 return dma_chan[chan];
}
