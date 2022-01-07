
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ PCI9118_DO ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static int pci9118_insn_bits_do(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 if (data[0]) {
  s->state &= ~data[0];
  s->state |= (data[0] & data[1]);
  outl(s->state & 0x0f, dev->iobase + PCI9118_DO);
 }
 data[1] = s->state;

 return 2;
}
