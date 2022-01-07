
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVR32_PERFCTR_IRQ_GROUP ;
 int avr32_perf_counter_reset () ;
 int counter ;
 int free_irq (int ,int ) ;
 int pr_debug (char*) ;

__attribute__((used)) static void avr32_perf_counter_shutdown(void)
{
 pr_debug("avr32_perf_counter_shutdown\n");

 avr32_perf_counter_reset();
 free_irq(AVR32_PERFCTR_IRQ_GROUP, counter);
}
