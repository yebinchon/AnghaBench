
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ TIMER0_VA_BASE ;
 scalar_t__ TIMER_INTCLR ;
 int stub1 (struct clock_event_device*) ;
 struct clock_event_device timer0_clockevent ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t versatile_timer_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *evt = &timer0_clockevent;

 writel(1, TIMER0_VA_BASE + TIMER_INTCLR);

 evt->event_handler(evt);

 return IRQ_HANDLED;
}
