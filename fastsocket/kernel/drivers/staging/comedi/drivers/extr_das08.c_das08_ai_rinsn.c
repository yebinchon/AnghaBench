
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* range_table; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; int spinlock; } ;
struct TYPE_6__ {int * pg_gainlist; int do_mux_bits; } ;
struct TYPE_5__ {int ai_nbits; scalar_t__ ai_encoding; } ;
struct TYPE_4__ {int length; } ;


 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 scalar_t__ DAS08AO_GAIN_CONTROL ;
 scalar_t__ DAS08_CONTROL ;
 int DAS08_EOC ;
 scalar_t__ DAS08_LSB ;
 scalar_t__ DAS08_MSB ;
 int DAS08_MUX (int) ;
 int DAS08_MUX_MASK ;
 scalar_t__ DAS08_STATUS ;
 scalar_t__ DAS08_TRIG_12BIT ;
 int ETIME ;
 int TIMEOUT ;
 int comedi_error (struct comedi_device*,char*) ;
 scalar_t__ das08_encode12 ;
 scalar_t__ das08_encode16 ;
 scalar_t__ das08_pcm_encode12 ;
 TYPE_3__* devpriv ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;
 int outb_p (int ,scalar_t__) ;
 int printk (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_2__* thisboard ;

__attribute__((used)) static int das08_ai_rinsn(struct comedi_device *dev, struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 int i, n;
 int chan;
 int range;
 int lsb, msb;

 chan = CR_CHAN(insn->chanspec);
 range = CR_RANGE(insn->chanspec);


 inb(dev->iobase + DAS08_LSB);
 inb(dev->iobase + DAS08_MSB);


 spin_lock(&dev->spinlock);
 devpriv->do_mux_bits &= ~DAS08_MUX_MASK;
 devpriv->do_mux_bits |= DAS08_MUX(chan);
 outb(devpriv->do_mux_bits, dev->iobase + DAS08_CONTROL);
 spin_unlock(&dev->spinlock);

 if (s->range_table->length > 1) {

  range = CR_RANGE(insn->chanspec);
  outb(devpriv->pg_gainlist[range],
       dev->iobase + DAS08AO_GAIN_CONTROL);
 }

 for (n = 0; n < insn->n; n++) {

  if (thisboard->ai_nbits == 16)
   if (inb(dev->iobase + DAS08_MSB) & 0x80)
    printk("das08: over-range\n");


  outb_p(0, dev->iobase + DAS08_TRIG_12BIT);

  for (i = 0; i < TIMEOUT; i++) {
   if (!(inb(dev->iobase + DAS08_STATUS) & DAS08_EOC))
    break;
  }
  if (i == TIMEOUT) {
   printk("das08: timeout\n");
   return -ETIME;
  }
  msb = inb(dev->iobase + DAS08_MSB);
  lsb = inb(dev->iobase + DAS08_LSB);
  if (thisboard->ai_encoding == das08_encode12) {
   data[n] = (lsb >> 4) | (msb << 4);
  } else if (thisboard->ai_encoding == das08_pcm_encode12) {
   data[n] = (msb << 8) + lsb;
  } else if (thisboard->ai_encoding == das08_encode16) {

   if (msb & 0x80)
    data[n] = (1 << 15) | lsb | ((msb & 0x7f) << 8);
   else
    data[n] = (1 << 15) - (lsb | (msb & 0x7f) << 8);
  } else {
   comedi_error(dev, "bug! unknown ai encoding");
   return -1;
  }
 }

 return n;
}
