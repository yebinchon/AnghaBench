
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xtp; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;



int kvm_apic_compare_prio(struct kvm_vcpu *vcpu1, struct kvm_vcpu *vcpu2)
{
 return vcpu1->arch.xtp - vcpu2->arch.xtp;
}
