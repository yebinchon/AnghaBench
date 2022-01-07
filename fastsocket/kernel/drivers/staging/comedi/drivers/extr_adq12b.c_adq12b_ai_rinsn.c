
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int last_channel; int last_range; } ;


 scalar_t__ ADQ12B_ADHIG ;
 scalar_t__ ADQ12B_ADLOW ;
 scalar_t__ ADQ12B_CTREG ;
 unsigned char ADQ12B_EOC ;
 scalar_t__ ADQ12B_STINR ;
 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 int TIMEOUT ;
 TYPE_1__* devpriv ;
 unsigned char inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int adq12b_ai_rinsn(struct comedi_device *dev,
      struct comedi_subdevice *s, struct comedi_insn *insn,
      unsigned int *data)
{
 int n, i;
 int range, channel;
 unsigned char hi, lo, status;


 range = CR_RANGE(insn->chanspec);
 channel = CR_CHAN(insn->chanspec);
 if (channel != devpriv->last_channel || range != devpriv->last_range) {
  outb((range << 4) | channel, dev->iobase + ADQ12B_CTREG);
  udelay(50);
 }


 status = inb(dev->iobase + ADQ12B_ADLOW);


 for (n = 0; n < insn->n; n++) {


  i = 0;
  do {

   status = inb(dev->iobase + ADQ12B_STINR);
   status = status & ADQ12B_EOC;
  } while (status == 0 && ++i < TIMEOUT);



  hi = inb(dev->iobase + ADQ12B_ADHIG);
  lo = inb(dev->iobase + ADQ12B_ADLOW);


  data[n] = (hi << 8) | lo;

 }


 return n;
}
