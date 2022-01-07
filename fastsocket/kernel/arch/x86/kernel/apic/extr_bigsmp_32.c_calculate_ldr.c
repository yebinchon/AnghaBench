
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_LDR ;
 unsigned long APIC_LDR_MASK ;
 unsigned long SET_APIC_LOGICAL_ID (unsigned long) ;
 unsigned long apic_read (int ) ;
 unsigned long per_cpu (int ,int) ;
 int x86_bios_cpu_apicid ;

__attribute__((used)) static inline unsigned long calculate_ldr(int cpu)
{
 unsigned long val, id;

 val = apic_read(APIC_LDR) & ~APIC_LDR_MASK;
 id = per_cpu(x86_bios_cpu_apicid, cpu);
 val |= SET_APIC_LOGICAL_ID(id);

 return val;
}
