
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B43legacy_BUG_ON (int) ;
 int cond_resched () ;
 int in_atomic () ;
 int in_interrupt () ;
 int in_irq () ;
 int irqs_disabled () ;

__attribute__((used)) static inline
void b43legacy_voluntary_preempt(void)
{
 B43legacy_BUG_ON(!(!in_atomic() && !in_irq() &&
     !in_interrupt() && !irqs_disabled()));

 cond_resched();

}
