
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int arm11_release_interrupts (int ,int ) ;
 int arm11_stop_pmu () ;
 int irqs ;

__attribute__((used)) static void armv6_pmu_stop(void)
{
 arm11_stop_pmu();
 arm11_release_interrupts(irqs, ARRAY_SIZE(irqs));
}
