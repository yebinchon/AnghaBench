
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_44x {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int kvmppc_44x_shadow_release (struct kvmppc_vcpu_44x*,int) ;
 int tlb_44x_hwater ;
 struct kvmppc_vcpu_44x* to_44x (struct kvm_vcpu*) ;

void kvmppc_mmu_destroy(struct kvm_vcpu *vcpu)
{
 struct kvmppc_vcpu_44x *vcpu_44x = to_44x(vcpu);
 int i;

 for (i = 0; i <= tlb_44x_hwater; i++)
  kvmppc_44x_shadow_release(vcpu_44x, i);
}
