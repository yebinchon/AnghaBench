
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tlbe {int dummy; } ;
struct kvmppc_vcpu_e500 {struct tlbe** guest_tlb; } ;
struct kvm_vcpu {int dummy; } ;
typedef int gva_t ;
typedef int gpa_t ;


 size_t esel_of (unsigned int) ;
 int get_tlb_bytes (struct tlbe*) ;
 int get_tlb_raddr (struct tlbe*) ;
 size_t tlbsel_of (unsigned int) ;
 struct kvmppc_vcpu_e500* to_e500 (struct kvm_vcpu*) ;

gpa_t kvmppc_mmu_xlate(struct kvm_vcpu *vcpu, unsigned int index,
   gva_t eaddr)
{
 struct kvmppc_vcpu_e500 *vcpu_e500 = to_e500(vcpu);
 struct tlbe *gtlbe =
  &vcpu_e500->guest_tlb[tlbsel_of(index)][esel_of(index)];
 u64 pgmask = get_tlb_bytes(gtlbe) - 1;

 return get_tlb_raddr(gtlbe) | (eaddr & pgmask);
}
