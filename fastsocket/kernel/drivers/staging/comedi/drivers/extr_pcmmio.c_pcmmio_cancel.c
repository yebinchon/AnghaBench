
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {int spinlock; scalar_t__ active; } ;
struct TYPE_5__ {TYPE_1__ intr; } ;
struct TYPE_6__ {TYPE_2__ dio; } ;


 int pcmmio_stop_intr (struct comedi_device*,struct comedi_subdevice*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_3__* subpriv ;

__attribute__((used)) static int pcmmio_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 unsigned long flags;

 spin_lock_irqsave(&subpriv->dio.intr.spinlock, flags);
 if (subpriv->dio.intr.active)
  pcmmio_stop_intr(dev, s);
 spin_unlock_irqrestore(&subpriv->dio.intr.spinlock, flags);

 return 0;
}
