
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct diosubd_data {int chans; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int len_chanlist; void* private; int insn_bits; scalar_t__ state; int * range_table; int type; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int io_access; } ;


 int COMEDI_SUBD_DO ;


 int SDF_COMMON ;
 int SDF_GROUND ;
 int SDF_LSAMPL ;
 int SDF_WRITABLE ;
 int pci_dio_insn_bits_do_b ;
 int pci_dio_insn_bits_do_w ;
 int range_digital ;
 TYPE_1__* this_board ;

__attribute__((used)) static int pci_dio_add_do(struct comedi_device *dev, struct comedi_subdevice *s,
     const struct diosubd_data *d, int subdev)
{
 s->type = COMEDI_SUBD_DO;
 s->subdev_flags = SDF_WRITABLE | SDF_GROUND | SDF_COMMON;
 if (d->chans > 16)
  s->subdev_flags |= SDF_LSAMPL;
 s->n_chan = d->chans;
 s->maxdata = 1;
 s->len_chanlist = d->chans;
 s->range_table = &range_digital;
 s->state = 0;
 switch (this_board->io_access) {
 case 128:
  s->insn_bits = pci_dio_insn_bits_do_b;
  break;
 case 129:
  s->insn_bits = pci_dio_insn_bits_do_w;
  break;
 }
 s->private = (void *)d;

 return 0;
}
