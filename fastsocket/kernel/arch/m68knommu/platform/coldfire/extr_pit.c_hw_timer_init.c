
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {void* min_delta_ns; void* max_delta_ns; int mult; int cpumask; } ;
struct TYPE_6__ {int shift; int mult; } ;


 int FREQ ;
 scalar_t__ MCFINT_PIT1 ;
 scalar_t__ MCFINT_VECBASE ;
 int NSEC_PER_SEC ;
 TYPE_3__ cf_pit_clockevent ;
 void* clockevent_delta2ns (int,TYPE_3__*) ;
 int clockevents_register_device (TYPE_3__*) ;
 int clocksource_hz2mult (int ,int ) ;
 int clocksource_register (TYPE_1__*) ;
 int cpumask_of (int ) ;
 int div_sc (int ,int ,int) ;
 TYPE_1__ pit_clk ;
 int pit_irq ;
 int setup_irq (scalar_t__,int *) ;
 int smp_processor_id () ;

void hw_timer_init(void)
{
 cf_pit_clockevent.cpumask = cpumask_of(smp_processor_id());
 cf_pit_clockevent.mult = div_sc(FREQ, NSEC_PER_SEC, 32);
 cf_pit_clockevent.max_delta_ns =
  clockevent_delta2ns(0xFFFF, &cf_pit_clockevent);
 cf_pit_clockevent.min_delta_ns =
  clockevent_delta2ns(0x3f, &cf_pit_clockevent);
 clockevents_register_device(&cf_pit_clockevent);

 setup_irq(MCFINT_VECBASE + MCFINT_PIT1, &pit_irq);

 pit_clk.mult = clocksource_hz2mult(FREQ, pit_clk.shift);
 clocksource_register(&pit_clk);
}
