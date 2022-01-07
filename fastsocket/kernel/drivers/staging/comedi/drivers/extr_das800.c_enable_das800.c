
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {int spinlock; scalar_t__ iobase; } ;
struct TYPE_4__ {int do_bits; } ;
struct TYPE_3__ {int resolution; } ;


 int CIO_ENHF ;
 int CONTROL1 ;
 int CONTROL1_INTE ;
 int CONV_CONTROL ;
 int CONV_HCEN ;
 scalar_t__ DAS800_CONTROL1 ;
 scalar_t__ DAS800_CONV_CONTROL ;
 scalar_t__ DAS800_GAIN ;
 TYPE_2__* devpriv ;
 int outb (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* thisboard ;

__attribute__((used)) static void enable_das800(struct comedi_device *dev)
{
 unsigned long irq_flags;
 spin_lock_irqsave(&dev->spinlock, irq_flags);

 if (thisboard->resolution == 16)
  outb(CIO_ENHF, dev->iobase + DAS800_GAIN);
 outb(CONV_CONTROL, dev->iobase + DAS800_GAIN);
 outb(CONV_HCEN, dev->iobase + DAS800_CONV_CONTROL);
 outb(CONTROL1, dev->iobase + DAS800_GAIN);
 outb(CONTROL1_INTE | devpriv->do_bits, dev->iobase + DAS800_CONTROL1);
 spin_unlock_irqrestore(&dev->spinlock, irq_flags);
}
