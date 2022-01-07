
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int shift; int mult; int (* read ) (TYPE_1__*) ;} ;


 TYPE_1__ clocksource_32k ;
 unsigned long long clocksource_cyc2ns (int ,int ,int ) ;
 int stub1 (TYPE_1__*) ;

unsigned long long sched_clock(void)
{
 return clocksource_cyc2ns(clocksource_32k.read(&clocksource_32k),
      clocksource_32k.mult, clocksource_32k.shift);
}
