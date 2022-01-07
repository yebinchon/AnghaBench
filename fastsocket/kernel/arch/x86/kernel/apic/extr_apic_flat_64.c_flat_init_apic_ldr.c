
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_DFR ;
 unsigned long APIC_DFR_FLAT ;
 int APIC_LDR ;
 unsigned long APIC_LDR_MASK ;
 unsigned long SET_APIC_LOGICAL_ID (unsigned long) ;
 unsigned long apic_read (int ) ;
 int apic_write (int ,unsigned long) ;
 unsigned long smp_processor_id () ;

__attribute__((used)) static void flat_init_apic_ldr(void)
{
 unsigned long val;
 unsigned long num, id;

 num = smp_processor_id();
 id = 1UL << num;
 apic_write(APIC_DFR, APIC_DFR_FLAT);
 val = apic_read(APIC_LDR) & ~APIC_LDR_MASK;
 val |= SET_APIC_LOGICAL_ID(id);
 apic_write(APIC_LDR, val);
}
