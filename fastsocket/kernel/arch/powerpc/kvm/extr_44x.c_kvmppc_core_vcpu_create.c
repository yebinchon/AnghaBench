
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvmppc_vcpu_44x {struct kvm_vcpu vcpu; } ;
struct kvm {int dummy; } ;


 int ENOMEM ;
 struct kvm_vcpu* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int kmem_cache_free (int ,struct kvmppc_vcpu_44x*) ;
 struct kvmppc_vcpu_44x* kmem_cache_zalloc (int ,int ) ;
 int kvm_vcpu_cache ;
 int kvm_vcpu_init (struct kvm_vcpu*,struct kvm*,unsigned int) ;

struct kvm_vcpu *kvmppc_core_vcpu_create(struct kvm *kvm, unsigned int id)
{
 struct kvmppc_vcpu_44x *vcpu_44x;
 struct kvm_vcpu *vcpu;
 int err;

 vcpu_44x = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL);
 if (!vcpu_44x) {
  err = -ENOMEM;
  goto out;
 }

 vcpu = &vcpu_44x->vcpu;
 err = kvm_vcpu_init(vcpu, kvm, id);
 if (err)
  goto free_vcpu;

 return vcpu;

free_vcpu:
 kmem_cache_free(kvm_vcpu_cache, vcpu_44x);
out:
 return ERR_PTR(err);
}
