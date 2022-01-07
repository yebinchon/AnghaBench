
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint64_t ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* pfi_output_selects; unsigned int pfi_direction_bits; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 unsigned int NUM_PFI_CHANNELS ;
 unsigned int max_dio_pfi_chan ;
 unsigned int min_counter_pfi_chan ;
 int ni_660x_select_pfi_output (struct comedi_device*,unsigned int,unsigned int) ;
 unsigned int num_pfi_output_selects ;
 unsigned int pfi_output_select_counter ;
 unsigned int pfi_output_select_do ;
 unsigned int pfi_output_select_high_Z ;
 TYPE_1__* private (struct comedi_device*) ;

__attribute__((used)) static int ni_660x_set_pfi_routing(struct comedi_device *dev, unsigned chan,
       unsigned source)
{
 if (source > num_pfi_output_selects)
  return -EINVAL;
 if (source == pfi_output_select_high_Z)
  return -EINVAL;
 if (chan < min_counter_pfi_chan) {
  if (source == pfi_output_select_counter)
   return -EINVAL;
 } else if (chan > max_dio_pfi_chan) {
  if (source == pfi_output_select_do)
   return -EINVAL;
 }
 BUG_ON(chan >= NUM_PFI_CHANNELS);

 private(dev)->pfi_output_selects[chan] = source;
 if (private(dev)->pfi_direction_bits & (((uint64_t) 1) << chan))
  ni_660x_select_pfi_output(dev, chan,
       private(dev)->
       pfi_output_selects[chan]);
 return 0;
}
