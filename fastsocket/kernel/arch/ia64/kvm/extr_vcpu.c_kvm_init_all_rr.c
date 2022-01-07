
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* metaphysical_saved_rr0; void* metaphysical_saved_rr4; int mode_flags; void* metaphysical_rr0; void* metaphysical_rr4; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int GUEST_PHY_EMUL ;
 int VMX (struct kvm_vcpu*,int ) ;
 size_t VRN0 ;
 size_t VRN1 ;
 size_t VRN2 ;
 size_t VRN3 ;
 size_t VRN4 ;
 size_t VRN5 ;
 size_t VRN7 ;
 size_t VRN_SHIFT ;
 int ia64_dv_serialize_data () ;
 int ia64_set_psr (unsigned long) ;
 int ia64_set_rr (size_t,void*) ;
 int ia64_srlz_d () ;
 scalar_t__ is_physical_mode (struct kvm_vcpu*) ;
 int local_irq_save (unsigned long) ;
 int panic_vm (struct kvm_vcpu*,char*) ;
 int * vrr ;
 void* vrrtomrr (int ) ;

void kvm_init_all_rr(struct kvm_vcpu *vcpu)
{
 unsigned long psr;

 local_irq_save(psr);





 vcpu->arch.metaphysical_saved_rr0 = vrrtomrr(VMX(vcpu, vrr[VRN0]));
 vcpu->arch.metaphysical_saved_rr4 = vrrtomrr(VMX(vcpu, vrr[VRN4]));

 if (is_physical_mode(vcpu)) {
  if (vcpu->arch.mode_flags & GUEST_PHY_EMUL)
   panic_vm(vcpu, "Machine Status conflicts!\n");

  ia64_set_rr((VRN0 << VRN_SHIFT), vcpu->arch.metaphysical_rr0);
  ia64_dv_serialize_data();
  ia64_set_rr((VRN4 << VRN_SHIFT), vcpu->arch.metaphysical_rr4);
  ia64_dv_serialize_data();
 } else {
  ia64_set_rr((VRN0 << VRN_SHIFT),
    vcpu->arch.metaphysical_saved_rr0);
  ia64_dv_serialize_data();
  ia64_set_rr((VRN4 << VRN_SHIFT),
    vcpu->arch.metaphysical_saved_rr4);
  ia64_dv_serialize_data();
 }
 ia64_set_rr((VRN1 << VRN_SHIFT),
   vrrtomrr(VMX(vcpu, vrr[VRN1])));
 ia64_dv_serialize_data();
 ia64_set_rr((VRN2 << VRN_SHIFT),
   vrrtomrr(VMX(vcpu, vrr[VRN2])));
 ia64_dv_serialize_data();
 ia64_set_rr((VRN3 << VRN_SHIFT),
   vrrtomrr(VMX(vcpu, vrr[VRN3])));
 ia64_dv_serialize_data();
 ia64_set_rr((VRN5 << VRN_SHIFT),
   vrrtomrr(VMX(vcpu, vrr[VRN5])));
 ia64_dv_serialize_data();
 ia64_set_rr((VRN7 << VRN_SHIFT),
   vrrtomrr(VMX(vcpu, vrr[VRN7])));
 ia64_dv_serialize_data();
 ia64_srlz_d();
 ia64_set_psr(psr);
}
