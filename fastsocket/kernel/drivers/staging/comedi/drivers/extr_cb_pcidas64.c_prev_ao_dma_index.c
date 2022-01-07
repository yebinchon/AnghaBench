
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int ao_dma_index; } ;


 int AO_DMA_RING_COUNT ;
 TYPE_1__* priv (struct comedi_device*) ;

__attribute__((used)) static inline unsigned int prev_ao_dma_index(struct comedi_device *dev)
{
 unsigned int buffer_index;

 if (priv(dev)->ao_dma_index == 0)
  buffer_index = AO_DMA_RING_COUNT - 1;
 else
  buffer_index = priv(dev)->ao_dma_index - 1;
 return buffer_index;
}
