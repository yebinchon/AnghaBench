
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int spinlock; } ;
struct TYPE_2__ {scalar_t__ lcr_iobase; scalar_t__ enable_irq; } ;


 int PCI236_INTR_ENABLE ;
 scalar_t__ PLX9052_INTCSR ;
 int PLX9052_INTCSR_LI1STAT_INACTIVE ;
 int PLX9052_INTCSR_LI1STAT_MASK ;
 TYPE_1__* devpriv ;
 int inl (scalar_t__) ;
 int outl (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pc236_intr_check(struct comedi_device *dev)
{
 int retval = 0;
 unsigned long flags;

 spin_lock_irqsave(&dev->spinlock, flags);
 if (devpriv->enable_irq) {
  retval = 1;
 }
 spin_unlock_irqrestore(&dev->spinlock, flags);

 return retval;
}
