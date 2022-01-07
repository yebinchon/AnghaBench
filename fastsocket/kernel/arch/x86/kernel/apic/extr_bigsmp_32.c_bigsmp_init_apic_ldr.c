
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_DFR ;
 unsigned long APIC_DFR_FLAT ;
 int APIC_LDR ;
 int apic_write (int ,unsigned long) ;
 unsigned long calculate_ldr (int) ;
 int smp_processor_id () ;

__attribute__((used)) static void bigsmp_init_apic_ldr(void)
{
 unsigned long val;
 int cpu = smp_processor_id();

 apic_write(APIC_DFR, APIC_DFR_FLAT);
 val = calculate_ldr(cpu);
 apic_write(APIC_LDR, val);
}
