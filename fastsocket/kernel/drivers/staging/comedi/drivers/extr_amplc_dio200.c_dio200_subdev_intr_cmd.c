
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dio200_subdev_intr {int active; int continuous; int spinlock; int stopcount; } ;
struct comedi_subdevice {TYPE_1__* async; struct dio200_subdev_intr* private; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int stop_src; int start_src; int stop_arg; } ;
struct TYPE_2__ {int inttrig; struct comedi_cmd cmd; } ;




 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 int dio200_inttrig_start_intr ;
 int dio200_start_intr (struct comedi_device*,struct comedi_subdevice*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dio200_subdev_intr_cmd(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 struct comedi_cmd *cmd = &s->async->cmd;
 struct dio200_subdev_intr *subpriv = s->private;
 unsigned long flags;
 int event = 0;

 spin_lock_irqsave(&subpriv->spinlock, flags);
 subpriv->active = 1;


 switch (cmd->stop_src) {
 case 129:
  subpriv->continuous = 0;
  subpriv->stopcount = cmd->stop_arg;
  break;
 default:

  subpriv->continuous = 1;
  subpriv->stopcount = 0;
  break;
 }


 switch (cmd->start_src) {
 case 128:
  s->async->inttrig = dio200_inttrig_start_intr;
  break;
 default:

  event = dio200_start_intr(dev, s);
  break;
 }
 spin_unlock_irqrestore(&subpriv->spinlock, flags);

 if (event) {
  comedi_event(dev, s);
 }

 return 0;
}
