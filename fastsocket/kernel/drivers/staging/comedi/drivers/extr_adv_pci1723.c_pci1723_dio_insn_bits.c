
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ PCI1723_READ_DIGITAL_INPUT_DATA ;
 scalar_t__ PCI1723_WRITE_DIGITAL_OUTPUT_CMD ;
 unsigned int inw (scalar_t__) ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static int pci1723_dio_insn_bits(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 if (data[0]) {
  s->state &= ~data[0];
  s->state |= (data[0] & data[1]);
  outw(s->state, dev->iobase + PCI1723_WRITE_DIGITAL_OUTPUT_CMD);
 }
 data[1] = inw(dev->iobase + PCI1723_READ_DIGITAL_INPUT_DATA);
 return 2;
}
