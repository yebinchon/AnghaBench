
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hard_smp_processor_id () ;

__attribute__((used)) static int apicid_phys_pkg_id(int initial_apic_id, int index_msb)
{
 return hard_smp_processor_id() >> index_msb;
}
