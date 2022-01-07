
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das6402_private {int dummy; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int len_chanlist; int * range_table; int cancel; int type; } ;
struct comedi_device {char* board_name; unsigned long iobase; unsigned int irq; struct comedi_subdevice* subdevices; int minor; } ;
struct comedi_devconfig {unsigned long* options; } ;


 int COMEDI_SUBD_AI ;
 int DAS6402_SIZE ;
 int EIO ;
 int SDF_GROUND ;
 int SDF_READABLE ;
 int alloc_private (struct comedi_device*,int) ;
 int alloc_subdevices (struct comedi_device*,int) ;
 int board_init (struct comedi_device*) ;
 int das6402_ai_cancel ;
 int intr_handler ;
 int printk (char*,...) ;
 int range_unknown ;
 int request_irq (unsigned int,int ,int ,char*,struct comedi_device*) ;
 int request_region (unsigned long,int ,char*) ;

__attribute__((used)) static int das6402_attach(struct comedi_device *dev,
     struct comedi_devconfig *it)
{
 unsigned int irq;
 unsigned long iobase;
 int ret;
 struct comedi_subdevice *s;

 dev->board_name = "das6402";

 iobase = it->options[0];
 if (iobase == 0)
  iobase = 0x300;

 printk("comedi%d: das6402: 0x%04lx", dev->minor, iobase);

 if (!request_region(iobase, DAS6402_SIZE, "das6402")) {
  printk(" I/O port conflict\n");
  return -EIO;
 }
 dev->iobase = iobase;



 irq = it->options[0];
 printk(" ( irq = %u )", irq);
 ret = request_irq(irq, intr_handler, 0, "das6402", dev);
 if (ret < 0) {
  printk("irq conflict\n");
  return ret;
 }
 dev->irq = irq;

 ret = alloc_private(dev, sizeof(struct das6402_private));
 if (ret < 0)
  return ret;

 ret = alloc_subdevices(dev, 1);
 if (ret < 0)
  return ret;


 s = dev->subdevices + 0;
 s->type = COMEDI_SUBD_AI;
 s->subdev_flags = SDF_READABLE | SDF_GROUND;
 s->n_chan = 8;

 s->cancel = das6402_ai_cancel;
 s->maxdata = (1 << 12) - 1;
 s->len_chanlist = 16;
 s->range_table = &range_unknown;

 board_init(dev);

 return 0;
}
