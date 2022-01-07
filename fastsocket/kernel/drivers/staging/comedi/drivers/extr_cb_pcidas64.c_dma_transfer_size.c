
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct comedi_device {int dummy; } ;
struct TYPE_6__ {TYPE_1__* ai_fifo; } ;
struct TYPE_5__ {unsigned int ai_fifo_segment_length; } ;
struct TYPE_4__ {unsigned int sample_packing_ratio; } ;


 int DMA_BUFFER_SIZE ;
 TYPE_3__* board (struct comedi_device*) ;
 TYPE_2__* priv (struct comedi_device*) ;

__attribute__((used)) static inline unsigned int dma_transfer_size(struct comedi_device *dev)
{
 unsigned int num_samples;

 num_samples =
     priv(dev)->ai_fifo_segment_length *
     board(dev)->ai_fifo->sample_packing_ratio;
 if (num_samples > DMA_BUFFER_SIZE / sizeof(uint16_t))
  num_samples = DMA_BUFFER_SIZE / sizeof(uint16_t);

 return num_samples;
}
