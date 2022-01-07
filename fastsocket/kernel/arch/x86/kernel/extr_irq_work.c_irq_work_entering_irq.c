
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ack_APIC_irq () ;
 int irq_enter () ;

__attribute__((used)) static inline void irq_work_entering_irq(void)
{
 irq_enter();
 ack_APIC_irq();
}
