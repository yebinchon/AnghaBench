
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; scalar_t__ irq; scalar_t__ subdevices; int minor; } ;
struct TYPE_2__ {scalar_t__ has_8255; } ;


 int ATMIO16D_SIZE ;
 TYPE_1__* boardtype ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int printk (char*,int ) ;
 int release_region (scalar_t__,int ) ;
 int reset_atmio16d (struct comedi_device*) ;
 int subdev_8255_cleanup (struct comedi_device*,scalar_t__) ;

__attribute__((used)) static int atmio16d_detach(struct comedi_device *dev)
{
 printk("comedi%d: atmio16d: remove\n", dev->minor);

 if (dev->subdevices && boardtype->has_8255)
  subdev_8255_cleanup(dev, dev->subdevices + 3);

 if (dev->irq)
  free_irq(dev->irq, dev);

 reset_atmio16d(dev);

 if (dev->iobase)
  release_region(dev->iobase, ATMIO16D_SIZE);

 return 0;
}
