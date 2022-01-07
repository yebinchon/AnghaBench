
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {unsigned int* ao_readback; unsigned short status1; } ;


 int CR_CHAN (int ) ;
 TYPE_1__* devpriv ;
 int outw (unsigned short,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int das16cs_ao_winsn(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 int i;
 int chan = CR_CHAN(insn->chanspec);
 unsigned short status1;
 unsigned short d;
 int bit;

 for (i = 0; i < insn->n; i++) {
  devpriv->ao_readback[chan] = data[i];
  d = data[i];

  outw(devpriv->status1, dev->iobase + 4);
  udelay(1);

  status1 = devpriv->status1 & ~0xf;
  if (chan)
   status1 |= 0x0001;
  else
   status1 |= 0x0008;


  outw(status1, dev->iobase + 4);
  udelay(1);

  for (bit = 15; bit >= 0; bit--) {
   int b = (d >> bit) & 0x1;
   b <<= 1;

   outw(status1 | b | 0x0000, dev->iobase + 4);
   udelay(1);

   outw(status1 | b | 0x0004, dev->iobase + 4);
   udelay(1);
  }


  outw(status1 | 0x9, dev->iobase + 4);
 }

 return i;
}
