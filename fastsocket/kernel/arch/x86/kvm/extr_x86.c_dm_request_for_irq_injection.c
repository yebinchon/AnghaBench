
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {TYPE_1__* run; int kvm; } ;
struct TYPE_2__ {scalar_t__ request_interrupt_window; } ;


 int irqchip_in_kernel (int ) ;
 scalar_t__ kvm_arch_interrupt_allowed (struct kvm_vcpu*) ;
 int kvm_cpu_has_interrupt (struct kvm_vcpu*) ;

__attribute__((used)) static int dm_request_for_irq_injection(struct kvm_vcpu *vcpu)
{
 return (!irqchip_in_kernel(vcpu->kvm) && !kvm_cpu_has_interrupt(vcpu) &&
  vcpu->run->request_interrupt_window &&
  kvm_arch_interrupt_allowed(vcpu));
}
