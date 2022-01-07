
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int com_reg_2_state; } ;


 int COMREG2_DOUTEN0 ;
 int COMREG2_DOUTEN1 ;
 scalar_t__ COM_REG_2 ;
 int CR_CHAN (int ) ;
 TYPE_1__* devpriv ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static int atmio16d_dio_insn_config(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 int i;
 int mask;

 for (i = 0; i < insn->n; i++) {
  mask = (CR_CHAN(insn->chanspec) < 4) ? 0x0f : 0xf0;
  s->io_bits &= ~mask;
  if (data[i])
   s->io_bits |= mask;
 }
 devpriv->com_reg_2_state &= ~(COMREG2_DOUTEN0 | COMREG2_DOUTEN1);
 if (s->io_bits & 0x0f)
  devpriv->com_reg_2_state |= COMREG2_DOUTEN0;
 if (s->io_bits & 0xf0)
  devpriv->com_reg_2_state |= COMREG2_DOUTEN1;
 outw(devpriv->com_reg_2_state, dev->iobase + COM_REG_2);

 return i;
}
