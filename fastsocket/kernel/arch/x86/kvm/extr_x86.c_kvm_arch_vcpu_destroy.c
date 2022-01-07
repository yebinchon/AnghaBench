
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int (* vcpu_free ) (struct kvm_vcpu*) ;} ;


 int fx_free (struct kvm_vcpu*) ;
 int kvm_mmu_unload (struct kvm_vcpu*) ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu)
{
 vcpu_load(vcpu);
 kvm_mmu_unload(vcpu);
 vcpu_put(vcpu);

 fx_free(vcpu);
 kvm_x86_ops->vcpu_free(vcpu);
}
