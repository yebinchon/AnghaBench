
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_3__ {int ctrl_reg; } ;
struct TYPE_4__ {TYPE_1__ ai_context; } ;


 int CALL_PDEBUG (char*) ;
 unsigned long ME4000_AI_CTRL_BIT_IMMEDIATE_STOP ;
 unsigned long ME4000_AI_CTRL_BIT_STOP ;
 TYPE_2__* info ;
 unsigned long me4000_inl (struct comedi_device*,int ) ;
 int me4000_outl (struct comedi_device*,int,int ) ;

__attribute__((used)) static int me4000_ai_cancel(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 unsigned long tmp;

 CALL_PDEBUG("In me4000_ai_cancel()\n");


 tmp = me4000_inl(dev, info->ai_context.ctrl_reg);
 tmp &= ~(ME4000_AI_CTRL_BIT_STOP | ME4000_AI_CTRL_BIT_IMMEDIATE_STOP);
 me4000_outl(dev, tmp, info->ai_context.ctrl_reg);


 me4000_outl(dev, 0x0, info->ai_context.ctrl_reg);

 return 0;
}
