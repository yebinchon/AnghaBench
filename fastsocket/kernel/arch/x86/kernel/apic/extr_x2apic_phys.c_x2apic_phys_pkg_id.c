
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int x2apic_phys_pkg_id(int initial_apicid, int index_msb)
{
 return initial_apicid >> index_msb;
}
