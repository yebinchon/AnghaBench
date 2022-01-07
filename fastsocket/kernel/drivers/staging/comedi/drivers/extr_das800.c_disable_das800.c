
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int spinlock; scalar_t__ iobase; } ;


 int CONV_CONTROL ;
 scalar_t__ DAS800_CONV_CONTROL ;
 scalar_t__ DAS800_GAIN ;
 int outb (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void disable_das800(struct comedi_device *dev)
{
 unsigned long irq_flags;
 spin_lock_irqsave(&dev->spinlock, irq_flags);
 outb(CONV_CONTROL, dev->iobase + DAS800_GAIN);
 outb(0x0, dev->iobase + DAS800_CONV_CONTROL);
 spin_unlock_irqrestore(&dev->spinlock, irq_flags);
}
