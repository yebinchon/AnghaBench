
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int arm11_irqs ;
 int arm11_release_interrupts (int ,int ) ;
 int arm11_stop_pmu ;
 int em_call_function (int ) ;
 int scu_stop () ;

__attribute__((used)) static void em_stop(void)
{
 em_call_function(arm11_stop_pmu);
 arm11_release_interrupts(arm11_irqs, ARRAY_SIZE(arm11_irqs));
 scu_stop();
}
