
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tlbe {int dummy; } ;
struct kvmppc_vcpu_e500 {scalar_t__* guest_tlb_nv; } ;
typedef int gfn_t ;


 int kvmppc_e500_shadow_map (struct kvmppc_vcpu_e500*,int ,int ,struct tlbe*,int,unsigned int) ;
 scalar_t__ tlb1_max_shadow_size () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int kvmppc_e500_tlb1_map(struct kvmppc_vcpu_e500 *vcpu_e500,
  u64 gvaddr, gfn_t gfn, struct tlbe *gtlbe)
{
 unsigned int victim;

 victim = vcpu_e500->guest_tlb_nv[1]++;

 if (unlikely(vcpu_e500->guest_tlb_nv[1] >= tlb1_max_shadow_size()))
  vcpu_e500->guest_tlb_nv[1] = 0;

 kvmppc_e500_shadow_map(vcpu_e500, gvaddr, gfn, gtlbe, 1, victim);

 return victim;
}
