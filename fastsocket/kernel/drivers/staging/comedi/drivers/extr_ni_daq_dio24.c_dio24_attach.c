
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int AssignedIRQ; } ;
struct TYPE_4__ {unsigned long BasePort1; } ;
struct pcmcia_device {TYPE_2__ irq; TYPE_1__ io; } ;
struct dio24_private {int dummy; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {unsigned long iobase; unsigned int irq; struct comedi_subdevice* subdevices; int board_name; int minor; } ;
struct comedi_devconfig {int dummy; } ;
struct TYPE_6__ {int bustype; int name; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ alloc_private (struct comedi_device*,int) ;
 scalar_t__ alloc_subdevices (struct comedi_device*,int) ;

 struct pcmcia_device* pcmcia_cur_dev ;
 int printk (char*,...) ;
 int subdev_8255_init (struct comedi_device*,struct comedi_subdevice*,int *,unsigned long) ;
 TYPE_3__* thisboard ;

__attribute__((used)) static int dio24_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 struct comedi_subdevice *s;
 unsigned long iobase = 0;



 struct pcmcia_device *link;


 if (alloc_private(dev, sizeof(struct dio24_private)) < 0)
  return -ENOMEM;


 switch (thisboard->bustype) {
 case 128:
  link = pcmcia_cur_dev;
  if (!link)
   return -EIO;
  iobase = link->io.BasePort1;



  break;
 default:
  printk("bug! couldn't determine board type\n");
  return -EINVAL;
  break;
 }
 printk("comedi%d: ni_daq_dio24: %s, io 0x%lx", dev->minor,
        thisboard->name, iobase);






 printk("\n");

 if (iobase == 0) {
  printk("io base address is zero!\n");
  return -EINVAL;
 }

 dev->iobase = iobase;






 dev->board_name = thisboard->name;

 if (alloc_subdevices(dev, 1) < 0)
  return -ENOMEM;


 s = dev->subdevices + 0;
 subdev_8255_init(dev, s, ((void*)0), dev->iobase);

 return 0;
}
