
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int dummy; } ;
typedef int cycle_t ;


 int xen_clocksource_read () ;

__attribute__((used)) static cycle_t xen_clocksource_get_cycles(struct clocksource *cs)
{
 return xen_clocksource_read();
}
