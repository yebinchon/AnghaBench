
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dio200_subdev_intr {int spinlock; scalar_t__ active; } ;
struct comedi_subdevice {TYPE_1__* async; struct dio200_subdev_intr* private; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ inttrig; } ;


 int EINVAL ;
 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 int dio200_start_intr (struct comedi_device*,struct comedi_subdevice*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
dio200_inttrig_start_intr(struct comedi_device *dev, struct comedi_subdevice *s,
     unsigned int trignum)
{
 struct dio200_subdev_intr *subpriv;
 unsigned long flags;
 int event = 0;

 if (trignum != 0)
  return -EINVAL;

 subpriv = s->private;

 spin_lock_irqsave(&subpriv->spinlock, flags);
 s->async->inttrig = 0;
 if (subpriv->active) {
  event = dio200_start_intr(dev, s);
 }
 spin_unlock_irqrestore(&subpriv->spinlock, flags);

 if (event) {
  comedi_event(dev, s);
 }

 return 1;
}
