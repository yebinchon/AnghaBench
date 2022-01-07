
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_e500 {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int kmem_cache_free (int ,struct kvmppc_vcpu_e500*) ;
 int kvm_vcpu_cache ;
 int kvm_vcpu_uninit (struct kvm_vcpu*) ;
 int kvmppc_e500_tlb_uninit (struct kvmppc_vcpu_e500*) ;
 struct kvmppc_vcpu_e500* to_e500 (struct kvm_vcpu*) ;

void kvmppc_core_vcpu_free(struct kvm_vcpu *vcpu)
{
 struct kvmppc_vcpu_e500 *vcpu_e500 = to_e500(vcpu);

 kvmppc_e500_tlb_uninit(vcpu_e500);
 kvm_vcpu_uninit(vcpu);
 kmem_cache_free(kvm_vcpu_cache, vcpu_e500);
}
