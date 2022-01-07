
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int * range_table; int insn_read; int type; int insn_write; } ;
struct comedi_device {unsigned long iobase; char* board_name; struct comedi_subdevice* subdevices; int minor; } ;
struct comedi_devconfig {unsigned long* options; } ;


 int C6XDIGIO_SIZE ;
 int COMEDI_SUBD_AO ;
 int COMEDI_SUBD_COUNTER ;
 int EIO ;
 int SDF_LSAMPL ;
 int SDF_READABLE ;
 int SDF_WRITEABLE ;
 int alloc_subdevices (struct comedi_device*,int) ;
 int board_init (struct comedi_device*) ;
 int c6xdigio_ei_insn_read ;
 int c6xdigio_pnp_driver ;
 int c6xdigio_pwmo_insn_read ;
 int c6xdigio_pwmo_insn_write ;
 int pnp_register_driver (int *) ;
 int printk (char*,int ,...) ;
 int range_bipolar10 ;
 int range_unknown ;
 int request_region (unsigned long,int ,char*) ;

__attribute__((used)) static int c6xdigio_attach(struct comedi_device *dev,
      struct comedi_devconfig *it)
{
 int result = 0;
 unsigned long iobase;
 unsigned int irq;
 struct comedi_subdevice *s;

 iobase = it->options[0];
 printk("comedi%d: c6xdigio: 0x%04lx\n", dev->minor, iobase);
 if (!request_region(iobase, C6XDIGIO_SIZE, "c6xdigio")) {
  printk("comedi%d: I/O port conflict\n", dev->minor);
  return -EIO;
 }
 dev->iobase = iobase;
 dev->board_name = "c6xdigio";

 result = alloc_subdevices(dev, 2);
 if (result < 0)
  return result;


 pnp_register_driver(&c6xdigio_pnp_driver);

 irq = it->options[1];
 if (irq > 0) {
  printk("comedi%d: irq = %u ignored\n", dev->minor, irq);
 } else if (irq == 0) {
  printk("comedi%d: no irq\n", dev->minor);
 }

 s = dev->subdevices + 0;

 s->type = COMEDI_SUBD_AO;
 s->subdev_flags = SDF_WRITEABLE;
 s->n_chan = 2;

 s->insn_read = c6xdigio_pwmo_insn_read;
 s->insn_write = c6xdigio_pwmo_insn_write;
 s->maxdata = 500;
 s->range_table = &range_bipolar10;

 s = dev->subdevices + 1;

 s->type = COMEDI_SUBD_COUNTER;
 s->subdev_flags = SDF_READABLE | SDF_LSAMPL;
 s->n_chan = 2;

 s->insn_read = c6xdigio_ei_insn_read;
 s->maxdata = 0xffffff;
 s->range_table = &range_unknown;
 board_init(dev);

 return 0;
}
