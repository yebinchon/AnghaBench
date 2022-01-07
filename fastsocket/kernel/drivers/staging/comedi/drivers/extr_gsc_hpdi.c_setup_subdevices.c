
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int subdev_flags; int n_chan; int len_chanlist; int maxdata; int cancel; int do_cmdtest; int do_cmd; int insn_config; int * range_table; int type; } ;
struct comedi_device {struct comedi_subdevice* read_subdev; struct comedi_subdevice* subdevices; } ;


 int COMEDI_SUBD_DIO ;
 int ENOMEM ;
 int SDF_CMD_READ ;
 int SDF_LSAMPL ;
 int SDF_READABLE ;
 int SDF_WRITEABLE ;
 scalar_t__ alloc_subdevices (struct comedi_device*,int) ;
 int dio_config_insn ;
 int hpdi_cancel ;
 int hpdi_cmd ;
 int hpdi_cmd_test ;
 int range_digital ;

__attribute__((used)) static int setup_subdevices(struct comedi_device *dev)
{
 struct comedi_subdevice *s;

 if (alloc_subdevices(dev, 1) < 0)
  return -ENOMEM;

 s = dev->subdevices + 0;

 dev->read_subdev = s;

 s->type = COMEDI_SUBD_DIO;
 s->subdev_flags =
     SDF_READABLE | SDF_WRITEABLE | SDF_LSAMPL | SDF_CMD_READ;
 s->n_chan = 32;
 s->len_chanlist = 32;
 s->maxdata = 1;
 s->range_table = &range_digital;
 s->insn_config = dio_config_insn;
 s->do_cmd = hpdi_cmd;
 s->do_cmdtest = hpdi_cmd_test;
 s->cancel = hpdi_cancel;

 return 0;
}
