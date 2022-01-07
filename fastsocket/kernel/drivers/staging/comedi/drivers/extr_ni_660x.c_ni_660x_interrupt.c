
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ attached; struct comedi_subdevice* subdevices; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int interrupt_lock; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int NI_660X_GPCT_SUBDEV (unsigned int) ;
 int ni_660x_handle_gpct_interrupt (struct comedi_device*,struct comedi_subdevice*) ;
 unsigned int ni_660x_num_counters (struct comedi_device*) ;
 TYPE_1__* private (struct comedi_device*) ;
 int smp_mb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t ni_660x_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s;
 unsigned i;
 unsigned long flags;

 if (dev->attached == 0)
  return IRQ_NONE;

 spin_lock_irqsave(&private(dev)->interrupt_lock, flags);
 smp_mb();
 for (i = 0; i < ni_660x_num_counters(dev); ++i) {
  s = dev->subdevices + NI_660X_GPCT_SUBDEV(i);
  ni_660x_handle_gpct_interrupt(dev, s);
 }
 spin_unlock_irqrestore(&private(dev)->interrupt_lock, flags);
 return IRQ_HANDLED;
}
