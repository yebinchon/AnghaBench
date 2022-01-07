
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ia64_rr {int ps; int val; } ;
union ia64_pta {int val; unsigned long size; scalar_t__ vf; } ;
typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int PAL_VPS_THASH ;
 int VRN_MASK ;
 int ia64_call_vsa (int ,int,int ,int,int ,int ,int ,int ) ;
 int vcpu_get_pta (struct kvm_vcpu*) ;
 int vcpu_get_rr (struct kvm_vcpu*,int) ;

u64 vcpu_thash(struct kvm_vcpu *vcpu, u64 vadr)
{
 union ia64_pta vpta;
 union ia64_rr vrr;
 u64 pval;
 u64 vhpt_offset;

 vpta.val = vcpu_get_pta(vcpu);
 vrr.val = vcpu_get_rr(vcpu, vadr);
 vhpt_offset = ((vadr >> vrr.ps) << 3) & ((1UL << (vpta.size)) - 1);
 if (vpta.vf) {
  pval = ia64_call_vsa(PAL_VPS_THASH, vadr, vrr.val,
    vpta.val, 0, 0, 0, 0);
 } else {
  pval = (vadr & VRN_MASK) | vhpt_offset |
   (vpta.val << 3 >> (vpta.size + 3) << (vpta.size));
 }
 return pval;
}
