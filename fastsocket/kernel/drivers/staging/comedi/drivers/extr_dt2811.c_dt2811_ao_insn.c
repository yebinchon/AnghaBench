
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {unsigned int* ao_readback; } ;


 int CR_CHAN (int ) ;
 scalar_t__ DT2811_DADAT0HI ;
 scalar_t__ DT2811_DADAT0LO ;
 TYPE_1__* devpriv ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static int dt2811_ao_insn(struct comedi_device *dev, struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 int i;
 int chan;

 chan = CR_CHAN(insn->chanspec);

 for (i = 0; i < insn->n; i++) {
  outb(data[i] & 0xff, dev->iobase + DT2811_DADAT0LO + 2 * chan);
  outb((data[i] >> 8) & 0xff,
       dev->iobase + DT2811_DADAT0HI + 2 * chan);
  devpriv->ao_readback[chan] = data[i];
 }

 return i;
}
