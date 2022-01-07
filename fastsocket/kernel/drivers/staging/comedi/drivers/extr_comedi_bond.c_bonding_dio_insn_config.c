
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct BondedDevice {int subdev; int dev; scalar_t__ chanid_offset; } ;
struct TYPE_2__ {int nchans; struct BondedDevice** chanIdDevMap; } ;


 unsigned int COMEDI_INPUT ;
 unsigned int COMEDI_OUTPUT ;
 int CR_CHAN (int ) ;
 int EINVAL ;



 int comedi_dio_config (int ,int ,int,unsigned int) ;
 TYPE_1__* devpriv ;

__attribute__((used)) static int bonding_dio_insn_config(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 int chan = CR_CHAN(insn->chanspec), ret, io_bits = s->io_bits;
 unsigned int io;
 struct BondedDevice *bdev;

 if (chan < 0 || chan >= devpriv->nchans)
  return -EINVAL;
 bdev = devpriv->chanIdDevMap[chan];





 switch (data[0]) {
 case 129:
  io = COMEDI_OUTPUT;
  io_bits |= 1 << chan;
  break;
 case 130:
  io = COMEDI_INPUT;
  io_bits &= ~(1 << chan);
  break;
 case 128:
  data[1] =
      (io_bits & (1 << chan)) ? COMEDI_OUTPUT : COMEDI_INPUT;
  return insn->n;
  break;
 default:
  return -EINVAL;
  break;
 }

 chan -= bdev->chanid_offset;
 ret = comedi_dio_config(bdev->dev, bdev->subdev, chan, io);
 if (ret != 1)
  return -EINVAL;


 s->io_bits = io_bits;
 return insn->n;
}
