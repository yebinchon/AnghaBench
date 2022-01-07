
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int COUNTER_BIT (int ) ;
 int IRQ_HANDLED ;
 int NETX_GPIO_IRQ ;
 struct clock_event_device netx_clockevent ;
 int stub1 (struct clock_event_device*) ;
 int writel (int ,int ) ;

__attribute__((used)) static irqreturn_t
netx_timer_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *evt = &netx_clockevent;


 writel(COUNTER_BIT(0), NETX_GPIO_IRQ);

 evt->event_handler(evt);

 return IRQ_HANDLED;
}
