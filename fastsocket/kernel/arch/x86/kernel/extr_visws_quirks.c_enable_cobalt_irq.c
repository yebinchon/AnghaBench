
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int co_apic_set (int ,unsigned int) ;
 int is_co_apic (unsigned int) ;

__attribute__((used)) static void enable_cobalt_irq(unsigned int irq)
{
 co_apic_set(is_co_apic(irq), irq);
}
