
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nmi_pending; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;



void kvm_inject_nmi(struct kvm_vcpu *vcpu)
{
 vcpu->arch.nmi_pending = 1;
}
