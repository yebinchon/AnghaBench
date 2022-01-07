
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ attached; int spinlock; scalar_t__ iobase; } ;
typedef int irqreturn_t ;


 scalar_t__ DAS16M1_CLEAR_INTR ;
 scalar_t__ DAS16M1_CS ;
 int IRQDATA ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int OVRUN ;
 int comedi_error (struct comedi_device*,char*) ;
 int das16m1_handler (struct comedi_device*,int) ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t das16m1_interrupt(int irq, void *d)
{
 int status;
 struct comedi_device *dev = d;

 if (dev->attached == 0) {
  comedi_error(dev, "premature interrupt");
  return IRQ_HANDLED;
 }

 spin_lock(&dev->spinlock);

 status = inb(dev->iobase + DAS16M1_CS);

 if ((status & (IRQDATA | OVRUN)) == 0) {
  comedi_error(dev, "spurious interrupt");
  spin_unlock(&dev->spinlock);
  return IRQ_NONE;
 }

 das16m1_handler(dev, status);


 outb(0, dev->iobase + DAS16M1_CLEAR_INTR);

 spin_unlock(&dev->spinlock);
 return IRQ_HANDLED;
}
