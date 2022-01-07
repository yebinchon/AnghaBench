
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int setup_dma_descriptors (struct comedi_device*,unsigned int) ;

__attribute__((used)) static int dio_config_block_size(struct comedi_device *dev, unsigned int *data)
{
 unsigned int requested_block_size;
 int retval;

 requested_block_size = data[1];

 retval = setup_dma_descriptors(dev, requested_block_size);
 if (retval < 0)
  return retval;

 data[1] = retval;

 return 2;
}
