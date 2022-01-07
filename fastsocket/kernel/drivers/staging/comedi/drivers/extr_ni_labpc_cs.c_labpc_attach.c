
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
struct labpc_private {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_devconfig {int dummy; } ;
struct TYPE_6__ {int bustype; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ alloc_private (struct comedi_device*,int) ;
 int labpc_common_attach (struct comedi_device*,unsigned long,unsigned int,int ) ;

 struct pcmcia_device* pcmcia_cur_dev ;
 int printk (char*) ;
 TYPE_3__* thisboard ;

__attribute__((used)) static int labpc_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 unsigned long iobase = 0;
 unsigned int irq = 0;
 struct pcmcia_device *link;


 if (alloc_private(dev, sizeof(struct labpc_private)) < 0)
  return -ENOMEM;


 switch (thisboard->bustype) {
 case 128:
  link = pcmcia_cur_dev;
  if (!link)
   return -EIO;
  iobase = link->io.BasePort1;
  irq = link->irq.AssignedIRQ;
  break;
 default:
  printk("bug! couldn't determine board type\n");
  return -EINVAL;
  break;
 }
 return labpc_common_attach(dev, iobase, irq, 0);
}
