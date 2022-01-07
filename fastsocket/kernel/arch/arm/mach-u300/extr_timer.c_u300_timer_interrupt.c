
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ U300_TIMER_APP_GPT1IA ;
 int U300_TIMER_APP_GPT1IA_IRQ_ACK ;
 scalar_t__ U300_TIMER_APP_VBASE ;
 struct clock_event_device clockevent_u300_1mhz ;
 int stub1 (struct clock_event_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t u300_timer_interrupt(int irq, void *dev_id)
{
 struct clock_event_device *evt = &clockevent_u300_1mhz;

 writel(U300_TIMER_APP_GPT1IA_IRQ_ACK,
  U300_TIMER_APP_VBASE + U300_TIMER_APP_GPT1IA);
 evt->event_handler(evt);
 return IRQ_HANDLED;
}
