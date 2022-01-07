
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlbe {scalar_t__ mas1; } ;
struct kvmppc_vcpu_e500 {struct tlbe** guest_tlb; } ;


 int get_tlb_eaddr (struct tlbe*) ;
 int get_tlb_end (struct tlbe*) ;
 int get_tlb_iprot (struct tlbe*) ;
 int get_tlb_tid (struct tlbe*) ;
 int kvmppc_e500_stlbe_invalidate (struct kvmppc_vcpu_e500*,int,int) ;
 int kvmppc_e500_tlb1_invalidate (struct kvmppc_vcpu_e500*,int ,int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int kvmppc_e500_gtlbe_invalidate(struct kvmppc_vcpu_e500 *vcpu_e500,
  int tlbsel, int esel)
{
 struct tlbe *gtlbe = &vcpu_e500->guest_tlb[tlbsel][esel];

 if (unlikely(get_tlb_iprot(gtlbe)))
  return -1;

 if (tlbsel == 1) {
  kvmppc_e500_tlb1_invalidate(vcpu_e500, get_tlb_eaddr(gtlbe),
    get_tlb_end(gtlbe),
    get_tlb_tid(gtlbe));
 } else {
  kvmppc_e500_stlbe_invalidate(vcpu_e500, tlbsel, esel);
 }

 gtlbe->mas1 = 0;

 return 0;
}
