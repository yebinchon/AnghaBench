
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct comedi_subdevice {TYPE_3__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_5__ {int spinlock; scalar_t__ active; } ;
struct TYPE_6__ {TYPE_1__ intr; } ;
struct TYPE_8__ {TYPE_2__ dio; } ;
struct TYPE_7__ {scalar_t__ inttrig; } ;


 int EINVAL ;
 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 int pcmmio_start_intr (struct comedi_device*,struct comedi_subdevice*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_4__* subpriv ;

__attribute__((used)) static int
pcmmio_inttrig_start_intr(struct comedi_device *dev, struct comedi_subdevice *s,
     unsigned int trignum)
{
 unsigned long flags;
 int event = 0;

 if (trignum != 0)
  return -EINVAL;

 spin_lock_irqsave(&subpriv->dio.intr.spinlock, flags);
 s->async->inttrig = 0;
 if (subpriv->dio.intr.active) {
  event = pcmmio_start_intr(dev, s);
 }
 spin_unlock_irqrestore(&subpriv->dio.intr.spinlock, flags);

 if (event) {
  comedi_event(dev, s);
 }

 return 1;
}
