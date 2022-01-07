
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int destroy_kvm_mmu (struct kvm_vcpu*) ;
 int init_kvm_mmu (struct kvm_vcpu*) ;

int kvm_mmu_reset_context(struct kvm_vcpu *vcpu)
{
 destroy_kvm_mmu(vcpu);
 return init_kvm_mmu(vcpu);
}
