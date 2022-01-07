
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {short cfg1; unsigned int* ao_readback; } ;


 scalar_t__ ATAO_CFG1 ;
 scalar_t__ ATAO_DACn (int) ;
 int CR_CHAN (int ) ;
 short GRP2WR ;
 TYPE_1__* devpriv ;
 int outw (short,scalar_t__) ;

__attribute__((used)) static int atao_ao_winsn(struct comedi_device *dev, struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 int i;
 int chan = CR_CHAN(insn->chanspec);
 short bits;

 for (i = 0; i < insn->n; i++) {
  bits = data[i] - 0x800;
  if (chan == 0) {
   devpriv->cfg1 |= GRP2WR;
   outw(devpriv->cfg1, dev->iobase + ATAO_CFG1);
  }
  outw(bits, dev->iobase + ATAO_DACn(chan));
  if (chan == 0) {
   devpriv->cfg1 &= ~GRP2WR;
   outw(devpriv->cfg1, dev->iobase + ATAO_CFG1);
  }
  devpriv->ao_readback[chan] = data[i];
 }

 return i;
}
