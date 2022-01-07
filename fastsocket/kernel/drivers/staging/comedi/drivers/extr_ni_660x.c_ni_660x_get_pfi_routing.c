
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int* pfi_output_selects; } ;


 int BUG_ON (int) ;
 unsigned int NUM_PFI_CHANNELS ;
 TYPE_1__* private (struct comedi_device*) ;

__attribute__((used)) static unsigned ni_660x_get_pfi_routing(struct comedi_device *dev,
     unsigned chan)
{
 BUG_ON(chan >= NUM_PFI_CHANNELS);
 return private(dev)->pfi_output_selects[chan];
}
