
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int REG_TISR ;
 int __raw_writel (int,int ) ;
 struct clock_event_device nuc900_clockevent_device ;
 int stub1 (struct clock_event_device*) ;

__attribute__((used)) static irqreturn_t nuc900_timer0_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *evt = &nuc900_clockevent_device;

 __raw_writel(0x01, REG_TISR);

 evt->event_handler(evt);
 return IRQ_HANDLED;
}
