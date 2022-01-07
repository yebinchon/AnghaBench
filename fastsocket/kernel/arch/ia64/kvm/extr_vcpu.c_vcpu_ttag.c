
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ia64_rr {int val; } ;
union ia64_pta {scalar_t__ vf; int val; } ;
typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int PAL_VPS_TTAG ;
 int ia64_call_vsa (int ,int,int ,int ,int ,int ,int ,int ) ;
 int vcpu_get_pta (struct kvm_vcpu*) ;
 int vcpu_get_rr (struct kvm_vcpu*,int) ;

u64 vcpu_ttag(struct kvm_vcpu *vcpu, u64 vadr)
{
 union ia64_rr vrr;
 union ia64_pta vpta;
 u64 pval;

 vpta.val = vcpu_get_pta(vcpu);
 vrr.val = vcpu_get_rr(vcpu, vadr);
 if (vpta.vf) {
  pval = ia64_call_vsa(PAL_VPS_TTAG, vadr, vrr.val,
      0, 0, 0, 0, 0);
 } else
  pval = 1;

 return pval;
}
