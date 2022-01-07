
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; scalar_t__ irq; scalar_t__ subdevices; int minor; } ;


 scalar_t__ DAS16M1_82C55 ;
 int DAS16M1_SIZE ;
 int DAS16M1_SIZE2 ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int printk (char*,int ) ;
 int release_region (scalar_t__,int ) ;
 int subdev_8255_cleanup (struct comedi_device*,scalar_t__) ;

__attribute__((used)) static int das16m1_detach(struct comedi_device *dev)
{
 printk("comedi%d: das16m1: remove\n", dev->minor);



 if (dev->subdevices)
  subdev_8255_cleanup(dev, dev->subdevices + 3);

 if (dev->irq)
  free_irq(dev->irq, dev);

 if (dev->iobase) {
  release_region(dev->iobase, DAS16M1_SIZE);
  release_region(dev->iobase + DAS16M1_82C55, DAS16M1_SIZE2);
 }

 return 0;
}
