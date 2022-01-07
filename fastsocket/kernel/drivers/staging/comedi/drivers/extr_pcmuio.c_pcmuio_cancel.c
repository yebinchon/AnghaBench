
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_3__ {int spinlock; scalar_t__ active; } ;
struct TYPE_4__ {TYPE_1__ intr; } ;


 int pcmuio_stop_intr (struct comedi_device*,struct comedi_subdevice*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_2__* subpriv ;

__attribute__((used)) static int pcmuio_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 unsigned long flags;

 spin_lock_irqsave(&subpriv->intr.spinlock, flags);
 if (subpriv->intr.active)
  pcmuio_stop_intr(dev, s);
 spin_unlock_irqrestore(&subpriv->intr.spinlock, flags);

 return 0;
}
