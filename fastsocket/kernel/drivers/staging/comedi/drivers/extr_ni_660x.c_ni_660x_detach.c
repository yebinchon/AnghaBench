
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ private; scalar_t__ irq; int minor; } ;
struct TYPE_2__ {scalar_t__ mite; scalar_t__ counter_dev; } ;


 int free_irq (scalar_t__,struct comedi_device*) ;
 int mite_unsetup (scalar_t__) ;
 int ni_660x_free_mite_rings (struct comedi_device*) ;
 int ni_gpct_device_destroy (scalar_t__) ;
 int printk (char*,int ) ;
 TYPE_1__* private (struct comedi_device*) ;

__attribute__((used)) static int ni_660x_detach(struct comedi_device *dev)
{
 printk("comedi%d: ni_660x: remove\n", dev->minor);


 if (dev->irq)
  free_irq(dev->irq, dev);

 if (dev->private) {
  if (private(dev)->counter_dev)
   ni_gpct_device_destroy(private(dev)->counter_dev);
  if (private(dev)->mite) {
   ni_660x_free_mite_rings(dev);
   mite_unsetup(private(dev)->mite);
  }
 }
 return 0;
}
