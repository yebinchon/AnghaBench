
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_pt_regs {unsigned long cr_ipsr; int cr_iip; } ;


 unsigned long IA64_DCR_BE ;
 unsigned long IA64_DCR_PP ;
 unsigned long IA64_IFS_V ;
 unsigned long IA64_PSR_DA ;
 unsigned long IA64_PSR_DD ;
 unsigned long IA64_PSR_ED ;
 unsigned long IA64_PSR_IC ;
 unsigned long IA64_PSR_ID ;
 unsigned long IA64_PSR_PP ;
 unsigned long IA64_PSR_SS ;
 unsigned long INITIAL_PSR_VALUE_AT_INTERRUPTION ;
 unsigned long VCPU (struct kvm_vcpu*,int ) ;
 int VMX (struct kvm_vcpu*,int ) ;
 int cr_iipa ;
 int dcr ;
 int ifs ;
 int vcpu_bsw0 (struct kvm_vcpu*) ;
 unsigned long vcpu_get_psr (struct kvm_vcpu*) ;
 struct kvm_pt_regs* vcpu_regs (struct kvm_vcpu*) ;
 int vcpu_set_ifs (struct kvm_vcpu*,unsigned long) ;
 int vcpu_set_iip (struct kvm_vcpu*,int ) ;
 int vcpu_set_iipa (struct kvm_vcpu*,int ) ;
 int vcpu_set_ipsr (struct kvm_vcpu*,unsigned long) ;
 int vcpu_set_psr (struct kvm_vcpu*,unsigned long) ;

__attribute__((used)) static void collect_interruption(struct kvm_vcpu *vcpu)
{
 u64 ipsr;
 u64 vdcr;
 u64 vifs;
 unsigned long vpsr;
 struct kvm_pt_regs *regs = vcpu_regs(vcpu);

 vpsr = vcpu_get_psr(vcpu);
 vcpu_bsw0(vcpu);
 if (vpsr & IA64_PSR_IC) {






  ipsr = regs->cr_ipsr;
  vpsr = vpsr | (ipsr & (IA64_PSR_ID | IA64_PSR_DA
     | IA64_PSR_DD | IA64_PSR_SS
     | IA64_PSR_ED));
  vcpu_set_ipsr(vcpu, vpsr);






  vcpu_set_iip(vcpu , regs->cr_iip);


  vifs = VCPU(vcpu, ifs);
  vifs &= ~IA64_IFS_V;
  vcpu_set_ifs(vcpu, vifs);

  vcpu_set_iipa(vcpu, VMX(vcpu, cr_iipa));
 }

 vdcr = VCPU(vcpu, dcr);






 vpsr &= INITIAL_PSR_VALUE_AT_INTERRUPTION;
 vpsr |= (vdcr & IA64_DCR_BE);


 if (vdcr & IA64_DCR_PP) {
  vpsr |= IA64_PSR_PP;
 } else {
  vpsr &= ~IA64_PSR_PP;
 }

 vcpu_set_psr(vcpu, vpsr);

}
