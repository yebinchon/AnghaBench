
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int subdev_flags; int maxdata; int insn_config; int insn_bits; int * range_table; int n_chan; int type; } ;
struct comedi_device {struct comedi_subdevice* subdevices; int board_name; int minor; } ;
struct comedi_devconfig {int dummy; } ;
struct Private {int dummy; } ;
struct TYPE_2__ {int ndevs; int nchans; int name; } ;


 int COMEDI_SUBD_DIO ;
 int EINVAL ;
 int ENOMEM ;
 int LOG_MSG (char*,int ,...) ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 scalar_t__ alloc_private (struct comedi_device*,int) ;
 scalar_t__ alloc_subdevices (struct comedi_device*,int) ;
 int bonding_dio_insn_bits ;
 int bonding_dio_insn_config ;
 TYPE_1__* devpriv ;
 int doDevConfig (struct comedi_device*,struct comedi_devconfig*) ;
 int range_digital ;

__attribute__((used)) static int bonding_attach(struct comedi_device *dev,
     struct comedi_devconfig *it)
{
 struct comedi_subdevice *s;

 LOG_MSG("comedi%d\n", dev->minor);





 if (alloc_private(dev, sizeof(struct Private)) < 0)
  return -ENOMEM;




 if (!doDevConfig(dev, it))
  return -EINVAL;





 dev->board_name = devpriv->name;





 if (alloc_subdevices(dev, 1) < 0)
  return -ENOMEM;

 s = dev->subdevices + 0;
 s->type = COMEDI_SUBD_DIO;
 s->subdev_flags = SDF_READABLE | SDF_WRITABLE;
 s->n_chan = devpriv->nchans;
 s->maxdata = 1;
 s->range_table = &range_digital;
 s->insn_bits = bonding_dio_insn_bits;
 s->insn_config = bonding_dio_insn_config;

 LOG_MSG("attached with %u DIO channels coming from %u different "
  "subdevices all bonded together.  "
  "John Lennon would be proud!\n",
  devpriv->nchans, devpriv->ndevs);

 return 1;
}
