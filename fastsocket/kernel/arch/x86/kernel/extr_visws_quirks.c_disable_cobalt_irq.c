
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CO_APIC_LO (int) ;
 int CO_APIC_MASK ;
 int co_apic_read (int ) ;
 int co_apic_write (int ,int ) ;
 int is_co_apic (unsigned int) ;

__attribute__((used)) static void disable_cobalt_irq(unsigned int irq)
{
 int entry = is_co_apic(irq);

 co_apic_write(CO_APIC_LO(entry), CO_APIC_MASK);
 co_apic_read(CO_APIC_LO(entry));
}
