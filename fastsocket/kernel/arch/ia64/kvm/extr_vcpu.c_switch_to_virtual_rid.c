
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int metaphysical_saved_rr4; int metaphysical_saved_rr0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int VRN0 ;
 int VRN4 ;
 int VRN_SHIFT ;
 unsigned long ia64_clear_ic () ;
 int ia64_set_psr (unsigned long) ;
 int ia64_set_rr (int,int ) ;
 int ia64_srlz_d () ;

void switch_to_virtual_rid(struct kvm_vcpu *vcpu)
{
 unsigned long psr;

 psr = ia64_clear_ic();
 ia64_set_rr(VRN0 << VRN_SHIFT, vcpu->arch.metaphysical_saved_rr0);
 ia64_srlz_d();
 ia64_set_rr(VRN4 << VRN_SHIFT, vcpu->arch.metaphysical_saved_rr4);
 ia64_srlz_d();
 ia64_set_psr(psr);
 return;
}
