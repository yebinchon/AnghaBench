
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int dummy; } ;


 int X86_FEATURE_ACC ;
 int X86_FEATURE_ACPI ;
 int cpu_has (struct cpuinfo_x86*,int ) ;
 int cpu_has_apic ;

__attribute__((used)) static int intel_thermal_supported(struct cpuinfo_x86 *c)
{
 if (!cpu_has_apic)
  return 0;
 if (!cpu_has(c, X86_FEATURE_ACPI) || !cpu_has(c, X86_FEATURE_ACC))
  return 0;
 return 1;
}
