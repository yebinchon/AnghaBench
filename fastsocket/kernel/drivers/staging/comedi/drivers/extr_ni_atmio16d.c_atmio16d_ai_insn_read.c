
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {scalar_t__ adc_coding; } ;


 scalar_t__ AD_CLEAR_REG ;
 scalar_t__ AD_FIFO_REG ;
 int ATMIO16D_TIMEOUT ;
 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 int ETIME ;
 scalar_t__ MUX_GAIN_REG ;
 scalar_t__ START_CONVERT_REG ;
 int STAT_AD_CONVAVAIL ;
 int STAT_AD_OVERFLOW ;
 scalar_t__ STAT_REG ;
 scalar_t__ adc_2comp ;
 TYPE_1__* devpriv ;
 void* inw (scalar_t__) ;
 int outw (int,scalar_t__) ;
 int printk (char*,...) ;

__attribute__((used)) static int atmio16d_ai_insn_read(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 int i, t;
 int chan;
 int gain;
 int status;




 chan = CR_CHAN(insn->chanspec);
 gain = CR_RANGE(insn->chanspec);







 outw(chan | (gain << 6), dev->iobase + MUX_GAIN_REG);

 for (i = 0; i < insn->n; i++) {

  outw(0, dev->iobase + START_CONVERT_REG);

  for (t = 0; t < ATMIO16D_TIMEOUT; t++) {

   status = inw(dev->iobase + STAT_REG);



   if (status & STAT_AD_CONVAVAIL) {

    data[i] = inw(dev->iobase + AD_FIFO_REG);

    if (devpriv->adc_coding == adc_2comp) {
     data[i] ^= 0x800;
    }
    break;
   }
   if (status & STAT_AD_OVERFLOW) {
    printk("atmio16d: a/d FIFO overflow\n");
    outw(0, dev->iobase + AD_CLEAR_REG);

    return -ETIME;
   }
  }

  if (t == ATMIO16D_TIMEOUT) {
   printk("atmio16d: timeout\n");

   return -ETIME;
  }
 }

 return i;
}
