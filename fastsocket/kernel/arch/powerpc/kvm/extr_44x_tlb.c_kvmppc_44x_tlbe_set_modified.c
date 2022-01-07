
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_44x {int* shadow_tlb_mod; } ;



__attribute__((used)) static void kvmppc_44x_tlbe_set_modified(struct kvmppc_vcpu_44x *vcpu_44x,
                                         unsigned int i)
{
 vcpu_44x->shadow_tlb_mod[i] = 1;
}
