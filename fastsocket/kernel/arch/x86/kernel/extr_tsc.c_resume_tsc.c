
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cycle_last; } ;


 TYPE_1__ clocksource_tsc ;

__attribute__((used)) static void resume_tsc(void)
{
 clocksource_tsc.cycle_last = 0;
}
