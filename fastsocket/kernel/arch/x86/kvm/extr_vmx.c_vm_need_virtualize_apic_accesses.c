
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 scalar_t__ cpu_has_vmx_virtualize_apic_accesses () ;
 scalar_t__ flexpriority_enabled ;
 scalar_t__ irqchip_in_kernel (struct kvm*) ;

__attribute__((used)) static inline int vm_need_virtualize_apic_accesses(struct kvm *kvm)
{
 return flexpriority_enabled &&
  (cpu_has_vmx_virtualize_apic_accesses()) &&
  (irqchip_in_kernel(kvm));
}
