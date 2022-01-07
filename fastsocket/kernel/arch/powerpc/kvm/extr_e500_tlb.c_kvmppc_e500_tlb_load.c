
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlbe {int dummy; } ;
struct kvmppc_vcpu_e500 {struct tlbe** shadow_tlb; } ;
struct kvm_vcpu {int dummy; } ;


 unsigned int MAS0_ESEL (int ) ;
 unsigned int MAS0_TLBSEL (int) ;
 int SPRN_MAS0 ;
 int __write_host_tlbe (struct tlbe*) ;
 scalar_t__ get_tlb_v (struct tlbe*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 unsigned int mfspr (int ) ;
 int mtspr (int ,unsigned int) ;
 int tlb1_max_shadow_size () ;
 struct kvmppc_vcpu_e500* to_e500 (struct kvm_vcpu*) ;
 int to_htlb1_esel (int) ;

void kvmppc_e500_tlb_load(struct kvm_vcpu *vcpu, int cpu)
{
 struct kvmppc_vcpu_e500 *vcpu_e500 = to_e500(vcpu);
 int i;
 unsigned register mas0;


 local_irq_disable();
 mas0 = mfspr(SPRN_MAS0);
 for (i = 0; i < tlb1_max_shadow_size(); i++) {
  struct tlbe *stlbe = &vcpu_e500->shadow_tlb[1][i];

  if (get_tlb_v(stlbe)) {
   mtspr(SPRN_MAS0, MAS0_TLBSEL(1)
     | MAS0_ESEL(to_htlb1_esel(i)));
   __write_host_tlbe(stlbe);
  }
 }
 mtspr(SPRN_MAS0, mas0);
 local_irq_enable();
}
