
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int NETX_GPIO_COUNTER_CURRENT (int ) ;
 int TIMER_CLOCKEVENT ;
 int writel (scalar_t__,int ) ;

__attribute__((used)) static int netx_set_next_event(unsigned long evt,
  struct clock_event_device *clk)
{
 writel(0 - evt, NETX_GPIO_COUNTER_CURRENT(TIMER_CLOCKEVENT));
 return 0;
}
