
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmad_priv_struct {int dummy; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int len_chanlist; int maxdata; int * range_table; int insn_read; int type; } ;
struct comedi_device {unsigned long iobase; struct comedi_subdevice* subdevices; int board_name; int minor; } ;
struct comedi_devconfig {unsigned long* options; } ;
struct TYPE_2__ {int n_ai_bits; int name; } ;


 int AREF_GROUND ;
 int COMEDI_SUBD_AI ;
 int EIO ;
 int PCMAD_SIZE ;
 int SDF_READABLE ;
 int alloc_private (struct comedi_device*,int) ;
 int alloc_subdevices (struct comedi_device*,int) ;
 int pcmad_ai_insn_read ;
 int printk (char*,...) ;
 int range_unknown ;
 int request_region (unsigned long,int ,char*) ;
 TYPE_1__* this_board ;

__attribute__((used)) static int pcmad_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 int ret;
 struct comedi_subdevice *s;
 unsigned long iobase;

 iobase = it->options[0];
 printk("comedi%d: pcmad: 0x%04lx ", dev->minor, iobase);
 if (!request_region(iobase, PCMAD_SIZE, "pcmad")) {
  printk("I/O port conflict\n");
  return -EIO;
 }
 dev->iobase = iobase;

 ret = alloc_subdevices(dev, 1);
 if (ret < 0)
  return ret;

 ret = alloc_private(dev, sizeof(struct pcmad_priv_struct));
 if (ret < 0)
  return ret;

 dev->board_name = this_board->name;

 s = dev->subdevices + 0;
 s->type = COMEDI_SUBD_AI;
 s->subdev_flags = SDF_READABLE | AREF_GROUND;
 s->n_chan = 16;
 s->len_chanlist = 1;
 s->insn_read = pcmad_ai_insn_read;
 s->maxdata = (1 << this_board->n_ai_bits) - 1;
 s->range_table = &range_unknown;

 return 0;
}
