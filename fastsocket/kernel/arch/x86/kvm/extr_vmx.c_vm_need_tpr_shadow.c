
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 scalar_t__ cpu_has_vmx_tpr_shadow () ;
 scalar_t__ irqchip_in_kernel (struct kvm*) ;

__attribute__((used)) static inline int vm_need_tpr_shadow(struct kvm *kvm)
{
 return (cpu_has_vmx_tpr_shadow()) && (irqchip_in_kernel(kvm));
}
