
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_660x_private {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int * pfi_output_selects; int soft_reg_copy_lock; int interrupt_lock; int mite_channel_lock; } ;


 unsigned int NUM_PFI_CHANNELS ;
 int alloc_private (struct comedi_device*,int) ;
 int pfi_output_select_counter ;
 TYPE_1__* private (struct comedi_device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ni_660x_allocate_private(struct comedi_device *dev)
{
 int retval;
 unsigned i;

 retval = alloc_private(dev, sizeof(struct ni_660x_private));
 if (retval < 0)
  return retval;

 spin_lock_init(&private(dev)->mite_channel_lock);
 spin_lock_init(&private(dev)->interrupt_lock);
 spin_lock_init(&private(dev)->soft_reg_copy_lock);
 for (i = 0; i < NUM_PFI_CHANNELS; ++i) {
  private(dev)->pfi_output_selects[i] = pfi_output_select_counter;
 }
 return 0;
}
