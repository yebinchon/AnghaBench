
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_44x {scalar_t__* shadow_tlb_mod; struct kvmppc_44x_tlbe* shadow_tlb; } ;
struct kvmppc_44x_tlbe {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ get_tlb_ts (struct kvmppc_44x_tlbe*) ;
 scalar_t__ get_tlb_v (struct kvmppc_44x_tlbe*) ;
 int kvmppc_44x_tlbie (int) ;
 int kvmppc_44x_tlbre (int,struct kvmppc_44x_tlbe*) ;
 int tlb_44x_hwater ;
 struct kvmppc_vcpu_44x* to_44x (struct kvm_vcpu*) ;

void kvmppc_44x_tlb_put(struct kvm_vcpu *vcpu)
{
 struct kvmppc_vcpu_44x *vcpu_44x = to_44x(vcpu);
 int i;

 for (i = 0; i <= tlb_44x_hwater; i++) {
  struct kvmppc_44x_tlbe *stlbe = &vcpu_44x->shadow_tlb[i];

  if (vcpu_44x->shadow_tlb_mod[i])
   kvmppc_44x_tlbre(i, stlbe);

  if (get_tlb_v(stlbe) && get_tlb_ts(stlbe))
   kvmppc_44x_tlbie(i);
 }
}
