
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_ICR ;
 int APIC_ICR_BUSY ;
 int apic_read (int ) ;
 int cpu_relax () ;

void native_apic_wait_icr_idle(void)
{
 while (apic_read(APIC_ICR) & APIC_ICR_BUSY)
  cpu_relax();
}
