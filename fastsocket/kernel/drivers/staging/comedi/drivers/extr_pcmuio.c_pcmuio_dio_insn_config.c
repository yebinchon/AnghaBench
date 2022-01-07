
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned long* iobases; } ;


 unsigned int COMEDI_INPUT ;
 unsigned int COMEDI_OUTPUT ;
 int CR_CHAN (int ) ;
 int EINVAL ;



 unsigned char inb (unsigned long) ;
 int outb (unsigned char,unsigned long) ;
 TYPE_1__* subpriv ;

__attribute__((used)) static int pcmuio_dio_insn_config(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 int chan = CR_CHAN(insn->chanspec), byte_no = chan / 8, bit_no =
     chan % 8;
 unsigned long ioaddr;
 unsigned char byte;


 ioaddr = subpriv->iobases[byte_no];
 switch (data[0]) {
 case 129:


  s->io_bits |= 1 << chan;
  break;
 case 130:


  byte = inb(ioaddr);
  byte &= ~(1 << bit_no);





  outb(byte, ioaddr);


  s->io_bits &= ~(1 << chan);
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

 return insn->n;
}
