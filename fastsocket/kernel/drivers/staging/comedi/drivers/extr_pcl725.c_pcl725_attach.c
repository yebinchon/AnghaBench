
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int maxdata; int n_chan; int * range_table; int insn_bits; int subdev_flags; int type; } ;
struct comedi_device {char* board_name; unsigned long iobase; struct comedi_subdevice* subdevices; scalar_t__ irq; int minor; } ;
struct comedi_devconfig {unsigned long* options; } ;


 int COMEDI_SUBD_DI ;
 int COMEDI_SUBD_DO ;
 int EIO ;
 int ENOMEM ;
 int PCL725_SIZE ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 scalar_t__ alloc_subdevices (struct comedi_device*,int) ;
 int pcl725_di_insn ;
 int pcl725_do_insn ;
 int printk (char*,...) ;
 int range_digital ;
 int request_region (unsigned long,int ,char*) ;

__attribute__((used)) static int pcl725_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 struct comedi_subdevice *s;
 unsigned long iobase;

 iobase = it->options[0];
 printk("comedi%d: pcl725: 0x%04lx ", dev->minor, iobase);
 if (!request_region(iobase, PCL725_SIZE, "pcl725")) {
  printk("I/O port conflict\n");
  return -EIO;
 }
 dev->board_name = "pcl725";
 dev->iobase = iobase;
 dev->irq = 0;

 if (alloc_subdevices(dev, 2) < 0)
  return -ENOMEM;

 s = dev->subdevices + 0;

 s->type = COMEDI_SUBD_DO;
 s->subdev_flags = SDF_WRITABLE;
 s->maxdata = 1;
 s->n_chan = 8;
 s->insn_bits = pcl725_do_insn;
 s->range_table = &range_digital;

 s = dev->subdevices + 1;

 s->type = COMEDI_SUBD_DI;
 s->subdev_flags = SDF_READABLE;
 s->maxdata = 1;
 s->n_chan = 8;
 s->insn_bits = pcl725_di_insn;
 s->range_table = &range_digital;

 printk("\n");

 return 0;
}
