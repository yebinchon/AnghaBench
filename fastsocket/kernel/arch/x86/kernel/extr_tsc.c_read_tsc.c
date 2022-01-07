
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clocksource {int dummy; } ;
typedef scalar_t__ cycle_t ;
struct TYPE_2__ {scalar_t__ cycle_last; } ;


 TYPE_1__ clocksource_tsc ;
 int get_cycles () ;

__attribute__((used)) static cycle_t read_tsc(struct clocksource *cs)
{
 cycle_t ret = (cycle_t)get_cycles();

 return ret >= clocksource_tsc.cycle_last ?
  ret : clocksource_tsc.cycle_last;
}
