
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int numaq_phys_pkg_id(int cpuid_apic, int index_msb)
{
 return cpuid_apic >> index_msb;
}
