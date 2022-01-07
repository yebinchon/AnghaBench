
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_vmx {int soft_vnmi_blocked; scalar_t__ vnmi_blocked_time; } ;
struct kvm_vcpu {int dummy; } ;


 int GUEST_INTERRUPTIBILITY_INFO ;
 int GUEST_INTR_STATE_NMI ;
 int cpu_has_virtual_nmis () ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmcs_clear_bits (int ,int ) ;
 int vmcs_set_bits (int ,int ) ;

__attribute__((used)) static void vmx_set_nmi_mask(struct kvm_vcpu *vcpu, bool masked)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);

 if (!cpu_has_virtual_nmis()) {
  if (vmx->soft_vnmi_blocked != masked) {
   vmx->soft_vnmi_blocked = masked;
   vmx->vnmi_blocked_time = 0;
  }
 } else {
  if (masked)
   vmcs_set_bits(GUEST_INTERRUPTIBILITY_INFO,
          GUEST_INTR_STATE_NMI);
  else
   vmcs_clear_bits(GUEST_INTERRUPTIBILITY_INFO,
     GUEST_INTR_STATE_NMI);
 }
}
