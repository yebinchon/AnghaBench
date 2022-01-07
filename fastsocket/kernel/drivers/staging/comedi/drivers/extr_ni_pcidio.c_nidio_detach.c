
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {scalar_t__ irq; scalar_t__ subdevices; } ;
struct TYPE_4__ {scalar_t__ mite; int * di_mite_ring; } ;
struct TYPE_3__ {int n_8255; int is_diodaq; } ;


 TYPE_2__* devpriv ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int mite_free_ring (int *) ;
 int mite_unsetup (scalar_t__) ;
 int subdev_8255_cleanup (struct comedi_device*,scalar_t__) ;
 TYPE_1__* this_board ;

__attribute__((used)) static int nidio_detach(struct comedi_device *dev)
{
 int i;

 if (this_board && !this_board->is_diodaq) {
  for (i = 0; i < this_board->n_8255; i++) {
   subdev_8255_cleanup(dev, dev->subdevices + i);
  }
 }

 if (dev->irq)
  free_irq(dev->irq, dev);

 if (devpriv) {
  if (devpriv->di_mite_ring) {
   mite_free_ring(devpriv->di_mite_ring);
   devpriv->di_mite_ring = ((void*)0);
  }
  if (devpriv->mite)
   mite_unsetup(devpriv->mite);
 }
 return 0;
}
