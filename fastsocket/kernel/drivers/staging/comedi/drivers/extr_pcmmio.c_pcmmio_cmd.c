
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int stop_src; int start_src; int stop_arg; } ;
struct TYPE_6__ {int active; int continuous; int spinlock; int stop_count; } ;
struct TYPE_7__ {TYPE_2__ intr; } ;
struct TYPE_8__ {TYPE_3__ dio; } ;
struct TYPE_5__ {int inttrig; struct comedi_cmd cmd; } ;




 int comedi_event (struct comedi_device*,struct comedi_subdevice*) ;
 int pcmmio_inttrig_start_intr ;
 int pcmmio_start_intr (struct comedi_device*,struct comedi_subdevice*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_4__* subpriv ;

__attribute__((used)) static int pcmmio_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned long flags;
 int event = 0;

 spin_lock_irqsave(&subpriv->dio.intr.spinlock, flags);
 subpriv->dio.intr.active = 1;


 switch (cmd->stop_src) {
 case 129:
  subpriv->dio.intr.continuous = 0;
  subpriv->dio.intr.stop_count = cmd->stop_arg;
  break;
 default:

  subpriv->dio.intr.continuous = 1;
  subpriv->dio.intr.stop_count = 0;
  break;
 }


 switch (cmd->start_src) {
 case 128:
  s->async->inttrig = pcmmio_inttrig_start_intr;
  break;
 default:

  event = pcmmio_start_intr(dev, s);
  break;
 }
 spin_unlock_irqrestore(&subpriv->dio.intr.spinlock, flags);

 if (event) {
  comedi_event(dev, s);
 }

 return 0;
}
