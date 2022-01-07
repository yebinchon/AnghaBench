
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_44x {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int kmem_cache_free (int ,struct kvmppc_vcpu_44x*) ;
 int kvm_vcpu_cache ;
 int kvm_vcpu_uninit (struct kvm_vcpu*) ;
 struct kvmppc_vcpu_44x* to_44x (struct kvm_vcpu*) ;

void kvmppc_core_vcpu_free(struct kvm_vcpu *vcpu)
{
 struct kvmppc_vcpu_44x *vcpu_44x = to_44x(vcpu);

 kvm_vcpu_uninit(vcpu);
 kmem_cache_free(kvm_vcpu_cache, vcpu_44x);
}
