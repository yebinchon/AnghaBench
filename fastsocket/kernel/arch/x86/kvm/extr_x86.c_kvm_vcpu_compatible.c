
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * apic; } ;
struct kvm_vcpu {TYPE_1__ arch; int kvm; } ;


 int irqchip_in_kernel (int ) ;

bool kvm_vcpu_compatible(struct kvm_vcpu *vcpu)
{
 return irqchip_in_kernel(vcpu->kvm) == (vcpu->arch.apic != ((void*)0));
}
