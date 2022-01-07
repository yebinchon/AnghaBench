
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inc_irq_stat (int ) ;
 int irq_threshold_count ;
 int mce_threshold_vector () ;

__attribute__((used)) static inline void __smp_threshold_interrupt(void)
{
 inc_irq_stat(irq_threshold_count);
 mce_threshold_vector();
}
