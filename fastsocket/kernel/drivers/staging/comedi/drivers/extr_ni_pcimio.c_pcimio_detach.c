
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ private; scalar_t__ irq; } ;
struct TYPE_2__ {scalar_t__ mite; int * gpct_mite_ring; int cdo_mite_ring; int ao_mite_ring; int ai_mite_ring; } ;


 TYPE_1__* devpriv ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int mio_common_detach (struct comedi_device*) ;
 int mite_free_ring (int ) ;
 int mite_unsetup (scalar_t__) ;

__attribute__((used)) static int pcimio_detach(struct comedi_device *dev)
{
 mio_common_detach(dev);
 if (dev->irq) {
  free_irq(dev->irq, dev);
 }
 if (dev->private) {
  mite_free_ring(devpriv->ai_mite_ring);
  mite_free_ring(devpriv->ao_mite_ring);
  mite_free_ring(devpriv->cdo_mite_ring);
  mite_free_ring(devpriv->gpct_mite_ring[0]);
  mite_free_ring(devpriv->gpct_mite_ring[1]);
  if (devpriv->mite)
   mite_unsetup(devpriv->mite);
 }

 return 0;
}
