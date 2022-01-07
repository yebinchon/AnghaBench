
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int boot_cpu_physical_apicid ;
 int read_apic_id () ;

__attribute__((used)) static int es7000_check_phys_apicid_present(int cpu_physical_apicid)
{
 boot_cpu_physical_apicid = read_apic_id();
 return 1;
}
