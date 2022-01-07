
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int (* vcpu_free ) (struct kvm_vcpu*) ;} ;


 int fx_free (struct kvm_vcpu*) ;
 TYPE_1__* kvm_x86_ops ;
 int kvmclock_reset (struct kvm_vcpu*) ;
 int stub1 (struct kvm_vcpu*) ;

void kvm_arch_vcpu_free(struct kvm_vcpu *vcpu)
{
 kvmclock_reset(vcpu);

 fx_free(vcpu);
 kvm_x86_ops->vcpu_free(vcpu);
}
