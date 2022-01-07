
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {unsigned int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {unsigned int cfg3; } ;


 scalar_t__ ATAO_CFG3 ;
 unsigned int COMEDI_INPUT ;
 unsigned int COMEDI_OUTPUT ;
 int CR_CHAN (int ) ;
 unsigned int DOUTEN1 ;
 unsigned int DOUTEN2 ;
 int EINVAL ;



 TYPE_1__* devpriv ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static int atao_dio_insn_config(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 int chan = CR_CHAN(insn->chanspec);
 unsigned int mask, bit;






 mask = (chan < 4) ? 0x0f : 0xf0;
 bit = (chan < 4) ? DOUTEN1 : DOUTEN2;

 switch (data[0]) {
 case 129:
  s->io_bits |= mask;
  devpriv->cfg3 |= bit;
  break;
 case 130:
  s->io_bits &= ~mask;
  devpriv->cfg3 &= ~bit;
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

 outw(devpriv->cfg3, dev->iobase + ATAO_CFG3);

 return 1;
}
