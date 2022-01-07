
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {scalar_t__ irq; scalar_t__ iobase; scalar_t__ subdevices; int minor; } ;
struct TYPE_2__ {scalar_t__ bustype; } ;


 int DIO700_SIZE ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 scalar_t__ pcmcia_bustype ;
 int printk (char*,int ) ;
 int release_region (scalar_t__,int ) ;
 int subdev_700_cleanup (struct comedi_device*,scalar_t__) ;
 TYPE_1__* thisboard ;

__attribute__((used)) static int dio700_detach(struct comedi_device *dev)
{
 printk("comedi%d: ni_daq_700: cs-remove\n", dev->minor);

 if (dev->subdevices)
  subdev_700_cleanup(dev, dev->subdevices + 0);

 if (thisboard->bustype != pcmcia_bustype && dev->iobase)
  release_region(dev->iobase, DIO700_SIZE);
 if (dev->irq)
  free_irq(dev->irq, dev);

 return 0;
}
