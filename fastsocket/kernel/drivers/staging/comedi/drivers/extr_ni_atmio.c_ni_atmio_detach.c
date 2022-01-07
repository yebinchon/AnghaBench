
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ irq; scalar_t__ iobase; } ;
struct TYPE_2__ {scalar_t__ isapnp_dev; } ;


 int NI_SIZE ;
 TYPE_1__* devpriv ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int mio_common_detach (struct comedi_device*) ;
 int pnp_device_detach (scalar_t__) ;
 int release_region (scalar_t__,int ) ;

__attribute__((used)) static int ni_atmio_detach(struct comedi_device *dev)
{
 mio_common_detach(dev);

 if (dev->iobase)
  release_region(dev->iobase, NI_SIZE);
 if (dev->irq) {
  free_irq(dev->irq, dev);
 }
 if (devpriv->isapnp_dev)
  pnp_device_detach(devpriv->isapnp_dev);

 return 0;
}
