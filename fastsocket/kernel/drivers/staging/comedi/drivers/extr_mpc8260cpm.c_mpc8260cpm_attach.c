
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpc8260cpm_private {int dummy; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int insn_bits; int insn_config; int * range_table; int type; } ;
struct comedi_device {struct comedi_subdevice* subdevices; int board_name; scalar_t__ board; scalar_t__ board_ptr; int minor; } ;
struct comedi_devconfig {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int COMEDI_SUBD_DIO ;
 int ENOMEM ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 scalar_t__ alloc_private (struct comedi_device*,int) ;
 scalar_t__ alloc_subdevices (struct comedi_device*,int) ;
 scalar_t__ mpc8260cpm_boards ;
 int mpc8260cpm_dio_bits ;
 int mpc8260cpm_dio_config ;
 int printk (char*,int ) ;
 int range_digital ;
 TYPE_1__* thisboard ;

__attribute__((used)) static int mpc8260cpm_attach(struct comedi_device *dev,
        struct comedi_devconfig *it)
{
 struct comedi_subdevice *s;
 int i;

 printk("comedi%d: mpc8260cpm: ", dev->minor);

 dev->board_ptr = mpc8260cpm_boards + dev->board;

 dev->board_name = thisboard->name;

 if (alloc_private(dev, sizeof(struct mpc8260cpm_private)) < 0)
  return -ENOMEM;

 if (alloc_subdevices(dev, 4) < 0)
  return -ENOMEM;

 for (i = 0; i < 4; i++) {
  s = dev->subdevices + i;
  s->type = COMEDI_SUBD_DIO;
  s->subdev_flags = SDF_READABLE | SDF_WRITABLE;
  s->n_chan = 32;
  s->maxdata = 1;
  s->range_table = &range_digital;
  s->insn_config = mpc8260cpm_dio_config;
  s->insn_bits = mpc8260cpm_dio_bits;
 }

 return 1;
}
