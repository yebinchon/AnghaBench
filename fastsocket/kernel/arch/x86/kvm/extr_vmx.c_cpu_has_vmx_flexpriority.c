
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_has_vmx_tpr_shadow () ;
 scalar_t__ cpu_has_vmx_virtualize_apic_accesses () ;

__attribute__((used)) static inline bool cpu_has_vmx_flexpriority(void)
{
 return cpu_has_vmx_tpr_shadow() &&
  cpu_has_vmx_virtualize_apic_accesses();
}
