
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rc_dev {int idle; int (* s_idle ) (struct rc_dev*,int) ;TYPE_1__* raw; } ;
struct TYPE_5__ {int timeout; } ;
struct TYPE_4__ {TYPE_2__ this_ev; } ;


 int IR_dprintk (int,char*,char*) ;
 int init_ir_raw_event (TYPE_2__*) ;
 int ir_raw_event_store (struct rc_dev*,TYPE_2__*) ;
 int stub1 (struct rc_dev*,int) ;

void ir_raw_event_set_idle(struct rc_dev *dev, bool idle)
{
 if (!dev->raw)
  return;

 IR_dprintk(2, "%s idle mode\n", idle ? "enter" : "leave");

 if (idle) {
  dev->raw->this_ev.timeout = 1;
  ir_raw_event_store(dev, &dev->raw->this_ev);
  init_ir_raw_event(&dev->raw->this_ev);
 }

 if (dev->s_idle)
  dev->s_idle(dev, idle);

 dev->idle = idle;
}
