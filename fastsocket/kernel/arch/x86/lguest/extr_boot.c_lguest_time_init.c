
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cpumask; } ;


 int clockevents_register_device (TYPE_1__*) ;
 int clocksource_register (int *) ;
 int cpumask_of (int ) ;
 int enable_lguest_irq (int ) ;
 int lguest_clock ;
 TYPE_1__ lguest_clockevent ;
 int lguest_time_irq ;
 int set_irq_handler (int ,int ) ;

__attribute__((used)) static void lguest_time_init(void)
{

 set_irq_handler(0, lguest_time_irq);

 clocksource_register(&lguest_clock);



 lguest_clockevent.cpumask = cpumask_of(0);
 clockevents_register_device(&lguest_clockevent);


 enable_lguest_irq(0);
}
