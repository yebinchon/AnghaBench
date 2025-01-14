
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {unsigned int muxgain_bits; scalar_t__ adc_coding; } ;


 unsigned int ARRAY_SIZE (int*) ;
 int BUG_ON (int) ;
 int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 int EIO ;
 int ETIME ;
 scalar_t__ RTI800_ADCHI ;
 scalar_t__ RTI800_ADCLO ;
 scalar_t__ RTI800_CLRFLAGS ;
 scalar_t__ RTI800_CONVERT ;
 scalar_t__ RTI800_CSR ;
 int RTI800_DONE ;
 scalar_t__ RTI800_MUXGAIN ;
 int RTI800_OVERRUN ;
 int RTI800_TIMEOUT ;
 scalar_t__ adc_2comp ;
 TYPE_1__* devpriv ;
 int* gaindelay ;
 int inb (scalar_t__) ;
 int outb (unsigned int,scalar_t__) ;
 int printk (char*) ;
 int udelay (int) ;

__attribute__((used)) static int rti800_ai_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 int i, t;
 int status;
 int chan = CR_CHAN(insn->chanspec);
 unsigned gain = CR_RANGE(insn->chanspec);
 unsigned muxgain_bits;

 inb(dev->iobase + RTI800_ADCHI);
 outb(0, dev->iobase + RTI800_CLRFLAGS);

 muxgain_bits = chan | (gain << 5);
 if (muxgain_bits != devpriv->muxgain_bits) {
  devpriv->muxgain_bits = muxgain_bits;
  outb(devpriv->muxgain_bits, dev->iobase + RTI800_MUXGAIN);


  if (insn->n > 0) {
   BUG_ON(gain >= ARRAY_SIZE(gaindelay));
   udelay(gaindelay[gain]);
  }
 }

 for (i = 0; i < insn->n; i++) {
  outb(0, dev->iobase + RTI800_CONVERT);
  for (t = RTI800_TIMEOUT; t; t--) {
   status = inb(dev->iobase + RTI800_CSR);
   if (status & RTI800_OVERRUN) {
    printk("rti800: a/d overrun\n");
    outb(0, dev->iobase + RTI800_CLRFLAGS);
    return -EIO;
   }
   if (status & RTI800_DONE)
    break;
   udelay(1);
  }
  if (t == 0) {
   printk("rti800: timeout\n");
   return -ETIME;
  }
  data[i] = inb(dev->iobase + RTI800_ADCLO);
  data[i] |= (0xf & inb(dev->iobase + RTI800_ADCHI)) << 8;

  if (devpriv->adc_coding == adc_2comp) {
   data[i] ^= 0x800;
  }
 }

 return i;
}
