
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rti802_private {int dummy; } ;
struct comedi_subdevice {int maxdata; int n_chan; int ** range_table_list; int insn_write; int insn_read; int subdev_flags; int type; } ;
struct comedi_device {unsigned long iobase; char* board_name; struct comedi_subdevice* subdevices; int minor; } ;
struct comedi_devconfig {unsigned long* options; } ;
struct TYPE_2__ {int ** range_type_list; int * dac_coding; } ;


 int COMEDI_SUBD_AO ;
 int EIO ;
 int ENOMEM ;
 int RTI802_SIZE ;
 int SDF_WRITABLE ;
 scalar_t__ alloc_private (struct comedi_device*,int) ;
 scalar_t__ alloc_subdevices (struct comedi_device*,int) ;
 int dac_2comp ;
 int dac_straight ;
 TYPE_1__* devpriv ;
 int printk (char*,...) ;
 int range_bipolar10 ;
 int range_unipolar10 ;
 int request_region (unsigned long,int ,char*) ;
 int rti802_ao_insn_read ;
 int rti802_ao_insn_write ;

__attribute__((used)) static int rti802_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 struct comedi_subdevice *s;
 int i;
 unsigned long iobase;

 iobase = it->options[0];
 printk("comedi%d: rti802: 0x%04lx ", dev->minor, iobase);
 if (!request_region(iobase, RTI802_SIZE, "rti802")) {
  printk("I/O port conflict\n");
  return -EIO;
 }
 dev->iobase = iobase;

 dev->board_name = "rti802";

 if (alloc_subdevices(dev, 1) < 0
     || alloc_private(dev, sizeof(struct rti802_private))) {
  return -ENOMEM;
 }

 s = dev->subdevices;

 s->type = COMEDI_SUBD_AO;
 s->subdev_flags = SDF_WRITABLE;
 s->maxdata = 0xfff;
 s->n_chan = 8;
 s->insn_read = rti802_ao_insn_read;
 s->insn_write = rti802_ao_insn_write;
 s->range_table_list = devpriv->range_type_list;

 for (i = 0; i < 8; i++) {
  devpriv->dac_coding[i] = (it->options[3 + 2 * i])
      ? (dac_straight)
      : (dac_2comp);
  devpriv->range_type_list[i] = (it->options[2 + 2 * i])
      ? &range_unipolar10 : &range_bipolar10;
 }

 printk("\n");

 return 0;
}
