
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int apic_base; } ;
struct kvm_vcpu {TYPE_1__ arch; int kvm; } ;


 scalar_t__ irqchip_in_kernel (int ) ;
 int kvm_lapic_set_base (struct kvm_vcpu*,int ) ;

void kvm_set_apic_base(struct kvm_vcpu *vcpu, u64 data)
{

 if (irqchip_in_kernel(vcpu->kvm))
  kvm_lapic_set_base(vcpu, data);
 else
  vcpu->arch.apic_base = data;
}
