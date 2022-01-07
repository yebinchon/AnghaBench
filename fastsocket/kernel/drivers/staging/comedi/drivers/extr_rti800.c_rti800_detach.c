
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ irq; scalar_t__ iobase; int minor; } ;


 int RTI800_SIZE ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int printk (char*,int ) ;
 int release_region (scalar_t__,int ) ;

__attribute__((used)) static int rti800_detach(struct comedi_device *dev)
{
 printk("comedi%d: rti800: remove\n", dev->minor);

 if (dev->iobase)
  release_region(dev->iobase, RTI800_SIZE);

 if (dev->irq)
  free_irq(dev->irq, dev);

 return 0;
}
