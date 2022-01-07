
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct thash_data {int ppn; int ps; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {int* i64; } ;
typedef TYPE_1__ IA64_BUNDLE ;


 int ARCH_PAGE_SHIFT ;
 int IA64_FAULT ;
 int IA64_NO_FAULT ;
 int IA64_PSR_IT ;
 int I_TLB ;
 int PSIZE (int) ;
 int VCPU (struct kvm_vcpu*,int ) ;
 scalar_t__ __kvm_va (int) ;
 int ia64_ptcl (int,int) ;
 int kvm_gpa_to_mpa (int) ;
 struct thash_data* vhpt_lookup (int) ;
 int vpsr ;
 struct thash_data* vtlb_lookup (struct kvm_vcpu*,int,int ) ;

int fetch_code(struct kvm_vcpu *vcpu, u64 gip, IA64_BUNDLE *pbundle)
{
 u64 gpip = 0;
 u64 *vpa;
 struct thash_data *tlb;
 u64 maddr;

 if (!(VCPU(vcpu, vpsr) & IA64_PSR_IT)) {

  gpip = gip;
 } else {
  tlb = vtlb_lookup(vcpu, gip, I_TLB);
  if (tlb)
   gpip = (tlb->ppn >> (tlb->ps - 12) << tlb->ps) |
    (gip & (PSIZE(tlb->ps) - 1));
 }
 if (gpip) {
  maddr = kvm_gpa_to_mpa(gpip);
 } else {
  tlb = vhpt_lookup(gip);
  if (tlb == ((void*)0)) {
   ia64_ptcl(gip, ARCH_PAGE_SHIFT << 2);
   return IA64_FAULT;
  }
  maddr = (tlb->ppn >> (tlb->ps - 12) << tlb->ps)
     | (gip & (PSIZE(tlb->ps) - 1));
 }
 vpa = (u64 *)__kvm_va(maddr);

 pbundle->i64[0] = *vpa++;
 pbundle->i64[1] = *vpa;

 return IA64_NO_FAULT;
}
