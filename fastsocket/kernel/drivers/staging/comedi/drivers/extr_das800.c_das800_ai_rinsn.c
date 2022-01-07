
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; int spinlock; } ;
struct TYPE_4__ {int do_bits; } ;
struct TYPE_3__ {int resolution; } ;


 int BUSY ;
 int CONTROL1 ;
 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 scalar_t__ DAS800_CONTROL1 ;
 scalar_t__ DAS800_GAIN ;
 scalar_t__ DAS800_LSB ;
 scalar_t__ DAS800_MSB ;
 scalar_t__ DAS800_STATUS ;
 int ETIME ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_2__* devpriv ;
 int disable_das800 (struct comedi_device*) ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int outb_p (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* thisboard ;
 int udelay (int) ;

__attribute__((used)) static int das800_ai_rinsn(struct comedi_device *dev,
      struct comedi_subdevice *s, struct comedi_insn *insn,
      unsigned int *data)
{
 int i, n;
 int chan;
 int range;
 int lsb, msb;
 int timeout = 1000;
 unsigned long irq_flags;

 disable_das800(dev);


 chan = CR_CHAN(insn->chanspec);

 spin_lock_irqsave(&dev->spinlock, irq_flags);
 outb(CONTROL1, dev->iobase + DAS800_GAIN);
 outb(chan | devpriv->do_bits, dev->iobase + DAS800_CONTROL1);
 spin_unlock_irqrestore(&dev->spinlock, irq_flags);


 range = CR_RANGE(insn->chanspec);
 if (thisboard->resolution == 12 && range)
  range += 0x7;
 range &= 0xf;
 outb(range, dev->iobase + DAS800_GAIN);

 udelay(5);

 for (n = 0; n < insn->n; n++) {

  outb_p(0, dev->iobase + DAS800_MSB);

  for (i = 0; i < timeout; i++) {
   if (!(inb(dev->iobase + DAS800_STATUS) & BUSY))
    break;
  }
  if (i == timeout) {
   comedi_error(dev, "timeout");
   return -ETIME;
  }
  lsb = inb(dev->iobase + DAS800_LSB);
  msb = inb(dev->iobase + DAS800_MSB);
  if (thisboard->resolution == 12) {
   data[n] = (lsb >> 4) & 0xff;
   data[n] |= (msb << 4);
  } else {
   data[n] = (msb << 8) | lsb;
  }
 }

 return n;
}
