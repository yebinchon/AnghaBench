
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int function; } ;
struct lg_cpu {TYPE_1__ hrt; } ;


 int CLOCK_REALTIME ;
 int HRTIMER_MODE_ABS ;
 int clockdev_fn ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;

void init_clockdev(struct lg_cpu *cpu)
{
 hrtimer_init(&cpu->hrt, CLOCK_REALTIME, HRTIMER_MODE_ABS);
 cpu->hrt.function = clockdev_fn;
}
