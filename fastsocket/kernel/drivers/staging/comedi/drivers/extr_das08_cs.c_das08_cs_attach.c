
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long BasePort1; } ;
struct pcmcia_device {TYPE_1__ io; } ;
struct das08_private_struct {int dummy; } ;
struct comedi_device {int minor; } ;
struct comedi_devconfig {int dummy; } ;
struct TYPE_4__ {scalar_t__ bustype; } ;


 int EINVAL ;
 int EIO ;
 int alloc_private (struct comedi_device*,int) ;
 struct pcmcia_device* cur_dev ;
 int das08_common_attach (struct comedi_device*,unsigned long) ;
 scalar_t__ pcmcia ;
 int printk (char*,...) ;
 TYPE_2__* thisboard ;

__attribute__((used)) static int das08_cs_attach(struct comedi_device *dev,
      struct comedi_devconfig *it)
{
 int ret;
 unsigned long iobase;
 struct pcmcia_device *link = cur_dev;

 ret = alloc_private(dev, sizeof(struct das08_private_struct));
 if (ret < 0)
  return ret;

 printk("comedi%d: das08_cs: ", dev->minor);


 if (thisboard->bustype == pcmcia) {
  if (link == ((void*)0)) {
   printk(" no pcmcia cards found\n");
   return -EIO;
  }
  iobase = link->io.BasePort1;
 } else {
  printk(" bug! board does not have PCMCIA bustype\n");
  return -EINVAL;
 }

 printk("\n");

 return das08_common_attach(dev, iobase);
}
