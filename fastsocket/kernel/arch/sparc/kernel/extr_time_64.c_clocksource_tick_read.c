
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clocksource {int dummy; } ;
typedef int cycle_t ;
struct TYPE_2__ {int (* get_tick ) () ;} ;


 int stub1 () ;
 TYPE_1__* tick_ops ;

__attribute__((used)) static cycle_t clocksource_tick_read(struct clocksource *cs)
{
 return tick_ops->get_tick();
}
