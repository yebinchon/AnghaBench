
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fl512_private {int dummy; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int insn_read; int insn_write; int * range_table; int type; } ;
struct comedi_device {unsigned long iobase; char* board_name; struct comedi_subdevice* subdevices; int minor; } ;
struct comedi_devconfig {unsigned long* options; } ;


 int COMEDI_SUBD_AI ;
 int COMEDI_SUBD_AO ;
 int EIO ;
 int ENOMEM ;
 int FL512_SIZE ;
 int SDF_GROUND ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 scalar_t__ alloc_private (struct comedi_device*,int) ;
 scalar_t__ alloc_subdevices (struct comedi_device*,int) ;
 int fl512_ai_insn ;
 int fl512_ao_insn ;
 int fl512_ao_insn_readback ;
 int printk (char*,...) ;
 int range_fl512 ;
 int request_region (unsigned long,int ,char*) ;

__attribute__((used)) static int fl512_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 unsigned long iobase;
 struct comedi_subdevice *s;


 iobase = it->options[0];
 printk("comedi:%d fl512: 0x%04lx", dev->minor, iobase);
 if (!request_region(iobase, FL512_SIZE, "fl512")) {
  printk(" I/O port conflict\n");
  return -EIO;
 }
 dev->iobase = iobase;
 dev->board_name = "fl512";
 if (alloc_private(dev, sizeof(struct fl512_private)) < 0)
  return -ENOMEM;





 if (alloc_subdevices(dev, 2) < 0)
  return -ENOMEM;





 s = dev->subdevices + 0;
 s->type = COMEDI_SUBD_AI;
 s->subdev_flags = SDF_READABLE | SDF_GROUND;
 s->n_chan = 16;
 s->maxdata = 0x0fff;
 s->range_table = &range_fl512;
 s->insn_read = fl512_ai_insn;
 printk("comedi: fl512: subdevice 0 initialized\n");


 s = dev->subdevices + 1;
 s->type = COMEDI_SUBD_AO;
 s->subdev_flags = SDF_WRITABLE;
 s->n_chan = 2;
 s->maxdata = 0x0fff;
 s->range_table = &range_fl512;
 s->insn_write = fl512_ao_insn;
 s->insn_read = fl512_ao_insn_readback;
 printk("comedi: fl512: subdevice 1 initialized\n");

 return 1;
}
