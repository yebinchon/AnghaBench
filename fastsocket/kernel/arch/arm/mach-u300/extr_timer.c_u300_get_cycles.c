
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycles_t ;
typedef int cycle_t ;


 scalar_t__ U300_TIMER_APP_GPT2CC ;
 scalar_t__ U300_TIMER_APP_VBASE ;
 int readl (scalar_t__) ;

__attribute__((used)) static cycle_t u300_get_cycles(struct clocksource *cs)
{
 return (cycles_t) readl(U300_TIMER_APP_VBASE + U300_TIMER_APP_GPT2CC);
}
