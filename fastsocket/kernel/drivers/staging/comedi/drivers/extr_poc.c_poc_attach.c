
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {scalar_t__ type; int n_chan; int maxdata; int subdev_flags; int insn_bits; int insn_read; int insn_write; int range_table; } ;
struct comedi_device {unsigned long iobase; struct comedi_subdevice* subdevices; int board_name; int minor; } ;
struct comedi_devconfig {unsigned long* options; } ;
struct TYPE_2__ {unsigned int iosize; int n_chan; scalar_t__ type; int n_bits; int insnbits; int rinsn; int winsn; int range; int name; } ;


 scalar_t__ COMEDI_SUBD_AO ;
 scalar_t__ COMEDI_SUBD_DO ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int SDF_WRITABLE ;
 scalar_t__ alloc_private (struct comedi_device*,int) ;
 scalar_t__ alloc_subdevices (struct comedi_device*,int) ;
 int printk (char*,...) ;
 int request_region (unsigned long,unsigned int,char*) ;
 TYPE_1__* this_board ;

__attribute__((used)) static int poc_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 struct comedi_subdevice *s;
 unsigned long iobase;
 unsigned int iosize;

 iobase = it->options[0];
 printk("comedi%d: poc: using %s iobase 0x%lx\n", dev->minor,
        this_board->name, iobase);

 dev->board_name = this_board->name;

 if (iobase == 0) {
  printk("io base address required\n");
  return -EINVAL;
 }

 iosize = this_board->iosize;

 if (!request_region(iobase, iosize, "dac02")) {
  printk
      ("I/O port conflict: failed to allocate ports 0x%lx to 0x%lx\n",
       iobase, iobase + iosize - 1);
  return -EIO;
 }
 dev->iobase = iobase;

 if (alloc_subdevices(dev, 1) < 0)
  return -ENOMEM;
 if (alloc_private(dev, sizeof(unsigned int) * this_board->n_chan) < 0)
  return -ENOMEM;


 s = dev->subdevices + 0;
 s->type = this_board->type;
 s->n_chan = this_board->n_chan;
 s->maxdata = (1 << this_board->n_bits) - 1;
 s->range_table = this_board->range;
 s->insn_write = this_board->winsn;
 s->insn_read = this_board->rinsn;
 s->insn_bits = this_board->insnbits;
 if (s->type == COMEDI_SUBD_AO || s->type == COMEDI_SUBD_DO) {
  s->subdev_flags = SDF_WRITABLE;
 }

 return 0;
}
