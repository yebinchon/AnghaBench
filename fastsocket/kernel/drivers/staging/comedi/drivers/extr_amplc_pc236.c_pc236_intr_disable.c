
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int spinlock; } ;
struct TYPE_2__ {scalar_t__ lcr_iobase; scalar_t__ enable_irq; } ;


 int PCI236_INTR_DISABLE ;
 scalar_t__ PLX9052_INTCSR ;
 TYPE_1__* devpriv ;
 int outl (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pc236_intr_disable(struct comedi_device *dev)
{
 unsigned long flags;

 spin_lock_irqsave(&dev->spinlock, flags);
 devpriv->enable_irq = 0;




 spin_unlock_irqrestore(&dev->spinlock, flags);
}
