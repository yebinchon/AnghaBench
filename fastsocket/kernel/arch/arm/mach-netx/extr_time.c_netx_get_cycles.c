
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycle_t ;


 int NETX_GPIO_COUNTER_CURRENT (int ) ;
 int TIMER_CLOCKSOURCE ;
 int readl (int ) ;

cycle_t netx_get_cycles(struct clocksource *cs)
{
 return readl(NETX_GPIO_COUNTER_CURRENT(TIMER_CLOCKSOURCE));
}
