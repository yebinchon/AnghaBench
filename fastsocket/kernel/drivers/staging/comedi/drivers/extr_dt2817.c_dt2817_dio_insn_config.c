
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int CR_CHAN (int ) ;
 scalar_t__ DT2817_CR ;
 int EINVAL ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int dt2817_dio_insn_config(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 int mask;
 int chan;
 int oe = 0;

 if (insn->n != 1)
  return -EINVAL;

 chan = CR_CHAN(insn->chanspec);
 if (chan < 8) {
  mask = 0xff;
 } else if (chan < 16) {
  mask = 0xff00;
 } else if (chan < 24) {
  mask = 0xff0000;
 } else
  mask = 0xff000000;
 if (data[0])
  s->io_bits |= mask;
 else
  s->io_bits &= ~mask;

 if (s->io_bits & 0x000000ff)
  oe |= 0x1;
 if (s->io_bits & 0x0000ff00)
  oe |= 0x2;
 if (s->io_bits & 0x00ff0000)
  oe |= 0x4;
 if (s->io_bits & 0xff000000)
  oe |= 0x8;

 outb(oe, dev->iobase + DT2817_CR);

 return 1;
}
