
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int status2; } ;


 unsigned int COMEDI_INPUT ;
 unsigned int COMEDI_OUTPUT ;
 int CR_CHAN (int ) ;
 int EINVAL ;



 TYPE_1__* devpriv ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static int das16cs_dio_insn_config(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 int chan = CR_CHAN(insn->chanspec);
 int bits;

 if (chan < 4)
  bits = 0x0f;
 else
  bits = 0xf0;

 switch (data[0]) {
 case 129:
  s->io_bits |= bits;
  break;
 case 130:
  s->io_bits &= bits;
  break;
 case 128:
  data[1] =
      (s->io_bits & (1 << chan)) ? COMEDI_OUTPUT : COMEDI_INPUT;
  return insn->n;
  break;
 default:
  return -EINVAL;
  break;
 }

 devpriv->status2 &= ~0x00c0;
 devpriv->status2 |= (s->io_bits & 0xf0) ? 0x0080 : 0;
 devpriv->status2 |= (s->io_bits & 0x0f) ? 0x0040 : 0;

 outw(devpriv->status2, dev->iobase + 6);

 return insn->n;
}
