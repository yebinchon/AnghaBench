
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inc_irq_stat (int ) ;
 int irq_thermal_count ;
 int smp_thermal_vector () ;

__attribute__((used)) static inline void __smp_thermal_interrupt(void)
{
 inc_irq_stat(irq_thermal_count);
 smp_thermal_vector();
}
