
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int spinlock; scalar_t__ iobase; } ;
struct TYPE_2__ {int do_bits; } ;


 int CONTROL1 ;
 int CONTROL1_INTE ;
 scalar_t__ DAS800_CONTROL1 ;
 scalar_t__ DAS800_GAIN ;
 TYPE_1__* devpriv ;
 int outb (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int das800_do_wbits(struct comedi_device *dev,
      struct comedi_subdevice *s, struct comedi_insn *insn,
      unsigned int *data)
{
 int wbits;
 unsigned long irq_flags;


 data[0] &= 0xf;
 wbits = devpriv->do_bits >> 4;
 wbits &= ~data[0];
 wbits |= data[0] & data[1];
 devpriv->do_bits = wbits << 4;

 spin_lock_irqsave(&dev->spinlock, irq_flags);
 outb(CONTROL1, dev->iobase + DAS800_GAIN);
 outb(devpriv->do_bits | CONTROL1_INTE, dev->iobase + DAS800_CONTROL1);
 spin_unlock_irqrestore(&dev->spinlock, irq_flags);

 data[1] = wbits;

 return 2;
}
