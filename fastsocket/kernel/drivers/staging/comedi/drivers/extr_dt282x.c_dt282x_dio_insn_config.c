
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int dacsr; } ;


 int CR_CHAN (int ) ;
 scalar_t__ DT2821_DACSR ;
 int DT2821_HBOE ;
 int DT2821_LBOE ;
 TYPE_1__* devpriv ;
 int outw (int ,scalar_t__) ;

__attribute__((used)) static int dt282x_dio_insn_config(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 int mask;

 mask = (CR_CHAN(insn->chanspec) < 8) ? 0x00ff : 0xff00;
 if (data[0])
  s->io_bits |= mask;
 else
  s->io_bits &= ~mask;

 if (s->io_bits & 0x00ff)
  devpriv->dacsr |= DT2821_LBOE;
 else
  devpriv->dacsr &= ~DT2821_LBOE;
 if (s->io_bits & 0xff00)
  devpriv->dacsr |= DT2821_HBOE;
 else
  devpriv->dacsr &= ~DT2821_HBOE;

 outw(devpriv->dacsr, dev->iobase + DT2821_DACSR);

 return 1;
}
