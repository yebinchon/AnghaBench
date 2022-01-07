
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dm_timer {int dummy; } ;
struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int OMAP_TIMER_INT_OVERFLOW ;
 struct clock_event_device clockevent_gpt ;
 int omap_dm_timer_write_status (struct omap_dm_timer*,int ) ;
 int stub1 (struct clock_event_device*) ;

__attribute__((used)) static irqreturn_t omap2_gp_timer_interrupt(int irq, void *dev_id)
{
 struct omap_dm_timer *gpt = (struct omap_dm_timer *)dev_id;
 struct clock_event_device *evt = &clockevent_gpt;

 omap_dm_timer_write_status(gpt, OMAP_TIMER_INT_OVERFLOW);

 evt->event_handler(evt);
 return IRQ_HANDLED;
}
