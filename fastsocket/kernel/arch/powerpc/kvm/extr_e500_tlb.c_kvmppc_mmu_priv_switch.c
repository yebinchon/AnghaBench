
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_e500 {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 int _tlbil_all () ;
 int kvmppc_e500_stlbe_invalidate (struct kvmppc_vcpu_e500*,int,int) ;
 int tlb1_max_shadow_size () ;
 struct kvmppc_vcpu_e500* to_e500 (struct kvm_vcpu*) ;

void kvmppc_mmu_priv_switch(struct kvm_vcpu *vcpu, int usermode)
{
 if (usermode) {
  struct kvmppc_vcpu_e500 *vcpu_e500 = to_e500(vcpu);
  int i;


  for (i = 0; i < tlb1_max_shadow_size(); i++)
   kvmppc_e500_stlbe_invalidate(vcpu_e500, 1, i);

  _tlbil_all();
 }
}
