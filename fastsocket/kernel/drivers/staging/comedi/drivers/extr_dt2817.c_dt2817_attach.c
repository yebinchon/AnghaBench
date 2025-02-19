
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int n_chan; int subdev_flags; int maxdata; scalar_t__ state; int insn_config; int insn_bits; int * range_table; int type; } ;
struct comedi_device {unsigned long iobase; char* board_name; struct comedi_subdevice* subdevices; int minor; } ;
struct comedi_devconfig {unsigned long* options; } ;


 int COMEDI_SUBD_DIO ;
 scalar_t__ DT2817_CR ;
 int DT2817_SIZE ;
 int EIO ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 int alloc_subdevices (struct comedi_device*,int) ;
 int dt2817_dio_insn_bits ;
 int dt2817_dio_insn_config ;
 int outb (int ,scalar_t__) ;
 int printk (char*,...) ;
 int range_digital ;
 int request_region (unsigned long,int ,char*) ;

__attribute__((used)) static int dt2817_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 int ret;
 struct comedi_subdevice *s;
 unsigned long iobase;

 iobase = it->options[0];
 printk("comedi%d: dt2817: 0x%04lx ", dev->minor, iobase);
 if (!request_region(iobase, DT2817_SIZE, "dt2817")) {
  printk("I/O port conflict\n");
  return -EIO;
 }
 dev->iobase = iobase;
 dev->board_name = "dt2817";

 ret = alloc_subdevices(dev, 1);
 if (ret < 0)
  return ret;

 s = dev->subdevices + 0;

 s->n_chan = 32;
 s->type = COMEDI_SUBD_DIO;
 s->subdev_flags = SDF_READABLE | SDF_WRITABLE;
 s->range_table = &range_digital;
 s->maxdata = 1;
 s->insn_bits = dt2817_dio_insn_bits;
 s->insn_config = dt2817_dio_insn_config;

 s->state = 0;
 outb(0, dev->iobase + DT2817_CR);

 printk("\n");

 return 0;
}
