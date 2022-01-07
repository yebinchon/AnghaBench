
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {unsigned long iobase; } ;
struct TYPE_2__ {unsigned int* ao_readback; } ;


 int CR_CHAN (int ) ;
 TYPE_1__* devpriv ;
 int inb (unsigned long) ;
 int outb (unsigned int,unsigned long) ;

__attribute__((used)) static int fl512_ao_insn(struct comedi_device *dev,
    struct comedi_subdevice *s, struct comedi_insn *insn,
    unsigned int *data)
{
 int n;
 int chan = CR_CHAN(insn->chanspec);
 unsigned long iobase = dev->iobase;

 for (n = 0; n < insn->n; n++) {
  outb(data[n] & 0x0ff, iobase + 4 + 2 * chan);
  outb((data[n] & 0xf00) >> 8, iobase + 4 + 2 * chan);
  inb(iobase + 4 + 2 * chan);

  devpriv->ao_readback[chan] = data[n];
 }
 return n;
}
