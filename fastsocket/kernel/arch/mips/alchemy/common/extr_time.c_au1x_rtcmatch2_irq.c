
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int stub1 (struct clock_event_device*) ;

__attribute__((used)) static irqreturn_t au1x_rtcmatch2_irq(int irq, void *dev_id)
{
 struct clock_event_device *cd = dev_id;
 cd->event_handler(cd);
 return IRQ_HANDLED;
}
