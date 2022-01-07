
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlbe {int mas7; int mas3; int mas2; scalar_t__ mas1; } ;
struct kvmppc_vcpu_e500 {struct tlbe** shadow_tlb; } ;


 int index_of (int,int) ;
 int kvmppc_e500_shadow_release (struct kvmppc_vcpu_e500*,int,int) ;
 int trace_kvm_stlb_inval (int ,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void kvmppc_e500_stlbe_invalidate(struct kvmppc_vcpu_e500 *vcpu_e500,
  int tlbsel, int esel)
{
 struct tlbe *stlbe = &vcpu_e500->shadow_tlb[tlbsel][esel];

 kvmppc_e500_shadow_release(vcpu_e500, tlbsel, esel);
 stlbe->mas1 = 0;
 trace_kvm_stlb_inval(index_of(tlbsel, esel), stlbe->mas1, stlbe->mas2,
        stlbe->mas3, stlbe->mas7);
}
