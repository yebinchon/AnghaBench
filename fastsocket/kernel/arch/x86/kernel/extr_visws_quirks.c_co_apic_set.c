
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CO_APIC_HI (int) ;
 int CO_APIC_LEVEL ;
 int CO_APIC_LO (int) ;
 int FIRST_EXTERNAL_VECTOR ;
 int co_apic_write (int ,int) ;

__attribute__((used)) static inline void co_apic_set(int entry, int irq)
{
 co_apic_write(CO_APIC_LO(entry), CO_APIC_LEVEL | (irq + FIRST_EXTERNAL_VECTOR));
 co_apic_write(CO_APIC_HI(entry), 0);
}
