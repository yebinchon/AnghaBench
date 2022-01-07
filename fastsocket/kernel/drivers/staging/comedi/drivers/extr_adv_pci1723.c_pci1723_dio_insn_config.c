
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int COMEDI_INPUT ;
 unsigned int COMEDI_OUTPUT ;
 int CR_CHAN (int ) ;
 int EINVAL ;



 scalar_t__ PCI1723_DIGITAL_IO_PORT_SET ;
 int outw (unsigned short,scalar_t__) ;

__attribute__((used)) static int pci1723_dio_insn_config(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 unsigned int mask;
 unsigned int bits;
 unsigned short dio_mode;

 mask = 1 << CR_CHAN(insn->chanspec);
 if (mask & 0x00FF) {
  bits = 0x00FF;
 } else {
  bits = 0xFF00;
 }
 switch (data[0]) {
 case 130:
  s->io_bits &= ~bits;
  break;
 case 129:
  s->io_bits |= bits;
  break;
 case 128:
  data[1] = (s->io_bits & bits) ? COMEDI_OUTPUT : COMEDI_INPUT;
  return insn->n;
 default:
  return -EINVAL;
 }


 dio_mode = 0x0000;
 if ((s->io_bits & 0x00FF) == 0)
  dio_mode |= 0x0001;
 if ((s->io_bits & 0xFF00) == 0)
  dio_mode |= 0x0002;
 outw(dio_mode, dev->iobase + PCI1723_DIGITAL_IO_PORT_SET);
 return 1;
}
