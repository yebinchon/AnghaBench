
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {unsigned int cfg2; } ;


 scalar_t__ ATAO_CFG2 ;
 unsigned int CR_CHAN (int ) ;
 unsigned int SCLK ;
 unsigned int SDATA ;
 TYPE_1__* devpriv ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static int atao_calib_insn_write(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 unsigned int bitstring, bit;
 unsigned int chan = CR_CHAN(insn->chanspec);

 bitstring = ((chan & 0x7) << 8) | (data[insn->n - 1] & 0xff);

 for (bit = 1 << (11 - 1); bit; bit >>= 1) {
  outw(devpriv->cfg2 | ((bit & bitstring) ? SDATA : 0),
       dev->iobase + ATAO_CFG2);
  outw(devpriv->cfg2 | SCLK | ((bit & bitstring) ? SDATA : 0),
       dev->iobase + ATAO_CFG2);
 }

 outw(devpriv->cfg2 | (((chan >> 3) + 1) << 14),
      dev->iobase + ATAO_CFG2);
 outw(devpriv->cfg2, dev->iobase + ATAO_CFG2);

 return insn->n;
}
