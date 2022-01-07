
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ PCI171x_DO ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static int pci171x_insn_bits_do(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 if (data[0]) {
  s->state &= ~data[0];
  s->state |= (data[0] & data[1]);
  outw(s->state, dev->iobase + PCI171x_DO);
 }
 data[1] = s->state;

 return 2;
}
