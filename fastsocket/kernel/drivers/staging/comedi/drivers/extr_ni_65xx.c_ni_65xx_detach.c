
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_device {unsigned int n_subdevices; TYPE_1__* subdevices; scalar_t__ irq; } ;
struct TYPE_6__ {scalar_t__ daq_io_addr; } ;
struct TYPE_5__ {TYPE_3__* mite; } ;
struct TYPE_4__ {int * private; } ;


 scalar_t__ Master_Interrupt_Control ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int kfree (int *) ;
 int mite_unsetup (TYPE_3__*) ;
 TYPE_2__* private (struct comedi_device*) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int ni_65xx_detach(struct comedi_device *dev)
{
 if (private(dev) && private(dev)->mite
     && private(dev)->mite->daq_io_addr) {
  writeb(0x00,
         private(dev)->mite->daq_io_addr +
         Master_Interrupt_Control);
 }

 if (dev->irq) {
  free_irq(dev->irq, dev);
 }

 if (private(dev)) {
  unsigned i;
  for (i = 0; i < dev->n_subdevices; ++i) {
   if (dev->subdevices[i].private) {
    kfree(dev->subdevices[i].private);
    dev->subdevices[i].private = ((void*)0);
   }
  }
  if (private(dev)->mite) {
   mite_unsetup(private(dev)->mite);
  }
 }
 return 0;
}
