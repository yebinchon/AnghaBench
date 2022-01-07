
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ attached; int spinlock; scalar_t__ iobase; } ;
typedef int irqreturn_t ;


 unsigned int CLEAR_INTR_MASK ;
 scalar_t__ DAS1800_STATUS ;
 unsigned int INT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int comedi_error (struct comedi_device*,char*) ;
 int das1800_ai_handler (struct comedi_device*) ;
 unsigned int inb (scalar_t__) ;
 int outb (unsigned int,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t das1800_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 unsigned int status;

 if (dev->attached == 0) {
  comedi_error(dev, "premature interrupt");
  return IRQ_HANDLED;
 }



 spin_lock(&dev->spinlock);
 status = inb(dev->iobase + DAS1800_STATUS);


 if (!(status & INT)) {
  spin_unlock(&dev->spinlock);
  return IRQ_NONE;
 }

 outb(CLEAR_INTR_MASK & ~INT, dev->iobase + DAS1800_STATUS);

 das1800_ai_handler(dev);

 spin_unlock(&dev->spinlock);
 return IRQ_HANDLED;
}
