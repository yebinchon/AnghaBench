
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {int ai_cmd2; int (* stc_writew ) (struct comedi_device*,int,int ) ;} ;
struct TYPE_3__ {int * inttrig; } ;


 int AI_Command_2_Register ;
 int AI_START1_Pulse ;
 int EINVAL ;
 TYPE_2__* devpriv ;
 int stub1 (struct comedi_device*,int,int ) ;

__attribute__((used)) static int ni_ai_inttrig(struct comedi_device *dev, struct comedi_subdevice *s,
    unsigned int trignum)
{
 if (trignum != 0)
  return -EINVAL;

 devpriv->stc_writew(dev, AI_START1_Pulse | devpriv->ai_cmd2,
       AI_Command_2_Register);
 s->async->inttrig = ((void*)0);

 return 1;
}
