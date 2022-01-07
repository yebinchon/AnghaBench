
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int len_chanlist; scalar_t__ io_bits; int * range_table; int insn_config; int insn_bits; int type; } ;
struct comedi_device {int dummy; } ;


 int COMEDI_SUBD_DIO ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 int pci20xxx_dio_config (struct comedi_device*,struct comedi_subdevice*) ;
 int pci20xxx_dio_insn_bits ;
 int pci20xxx_dio_insn_config ;
 int range_digital ;

__attribute__((used)) static int pci20xxx_dio_init(struct comedi_device *dev,
        struct comedi_subdevice *s)
{

 s->type = COMEDI_SUBD_DIO;
 s->subdev_flags = SDF_READABLE | SDF_WRITABLE;
 s->n_chan = 32;
 s->insn_bits = pci20xxx_dio_insn_bits;
 s->insn_config = pci20xxx_dio_insn_config;
 s->maxdata = 1;
 s->len_chanlist = 32;
 s->range_table = &range_digital;
 s->io_bits = 0;


 pci20xxx_dio_config(dev, s);

 return 0;
}
