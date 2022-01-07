
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long cr8; } ;
struct kvm_vcpu {TYPE_1__ arch; int kvm; } ;


 scalar_t__ irqchip_in_kernel (int ) ;
 unsigned long kvm_lapic_get_cr8 (struct kvm_vcpu*) ;

unsigned long kvm_get_cr8(struct kvm_vcpu *vcpu)
{
 if (irqchip_in_kernel(vcpu->kvm))
  return kvm_lapic_get_cr8(vcpu);
 else
  return vcpu->arch.cr8;
}
