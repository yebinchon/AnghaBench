
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_fifo_info {unsigned int num_segments; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {struct hw_fifo_info* ai_fifo; } ;


 unsigned int ai_fifo_size (struct comedi_device*) ;
 TYPE_1__* board (struct comedi_device*) ;
 unsigned int bytes_in_sample ;
 int set_ai_fifo_size (struct comedi_device*,int) ;

__attribute__((used)) static int ai_config_block_size(struct comedi_device *dev, unsigned int *data)
{
 int fifo_size;
 const struct hw_fifo_info *const fifo = board(dev)->ai_fifo;
 unsigned int block_size, requested_block_size;
 int retval;

 requested_block_size = data[1];

 if (requested_block_size) {
  fifo_size =
      requested_block_size * fifo->num_segments / bytes_in_sample;

  retval = set_ai_fifo_size(dev, fifo_size);
  if (retval < 0)
   return retval;

 }

 block_size = ai_fifo_size(dev) / fifo->num_segments * bytes_in_sample;

 data[1] = block_size;

 return 2;
}
