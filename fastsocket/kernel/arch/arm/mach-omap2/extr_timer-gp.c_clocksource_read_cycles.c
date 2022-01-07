
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycle_t ;


 int gpt_clocksource ;
 int omap_dm_timer_read_counter (int ) ;

__attribute__((used)) static cycle_t clocksource_read_cycles(struct clocksource *cs)
{
 return (cycle_t)omap_dm_timer_read_counter(gpt_clocksource);
}
