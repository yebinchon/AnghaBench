
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long cr8; } ;
struct kvm_vcpu {TYPE_1__ arch; int kvm; } ;


 unsigned long CR8_RESERVED_BITS ;
 scalar_t__ irqchip_in_kernel (int ) ;
 int kvm_lapic_set_tpr (struct kvm_vcpu*,unsigned long) ;

int kvm_set_cr8(struct kvm_vcpu *vcpu, unsigned long cr8)
{
 if (cr8 & CR8_RESERVED_BITS)
  return 1;
 if (irqchip_in_kernel(vcpu->kvm))
  kvm_lapic_set_tpr(vcpu, cr8);
 else
  vcpu->arch.cr8 = cr8;
 return 0;
}
