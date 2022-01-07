
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ia64_rr {int ps; int val; } ;
typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 unsigned long PHY_PAGE_WB ;
 unsigned long _PAGE_PPN_MASK ;
 int ia64_get_rr (unsigned long) ;
 int thash_vhpt_insert (struct kvm_vcpu*,unsigned long,int ,unsigned long,int) ;

void physical_tlb_miss(struct kvm_vcpu *vcpu, unsigned long vadr, int type)
{
 unsigned long pte;
 union ia64_rr rr;

 rr.val = ia64_get_rr(vadr);
 pte = vadr & _PAGE_PPN_MASK;
 pte = pte | PHY_PAGE_WB;
 thash_vhpt_insert(vcpu, pte, (u64)(rr.ps << 2), vadr, type);
 return;
}
