
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {unsigned int* ao_readback; scalar_t__* bipolar; } ;


 int CR_CHAN (int ) ;
 scalar_t__ PCL726_DAC0_HI ;
 scalar_t__ PCL726_DAC0_LO ;
 TYPE_1__* devpriv ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int pcl726_ao_insn(struct comedi_device *dev, struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 int hi, lo;
 int n;
 int chan = CR_CHAN(insn->chanspec);

 for (n = 0; n < insn->n; n++) {
  lo = data[n] & 0xff;
  hi = (data[n] >> 8) & 0xf;
  if (devpriv->bipolar[chan])
   hi ^= 0x8;





  outb(hi, dev->iobase + PCL726_DAC0_HI + 2 * chan);
  outb(lo, dev->iobase + PCL726_DAC0_LO + 2 * chan);
  devpriv->ao_readback[chan] = data[n];
 }

 return n;
}
