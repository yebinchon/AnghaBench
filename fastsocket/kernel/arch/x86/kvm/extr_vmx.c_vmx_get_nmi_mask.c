
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int soft_vnmi_blocked; } ;


 int GUEST_INTERRUPTIBILITY_INFO ;
 int GUEST_INTR_STATE_NMI ;
 int cpu_has_virtual_nmis () ;
 TYPE_1__* to_vmx (struct kvm_vcpu*) ;
 int vmcs_read32 (int ) ;

__attribute__((used)) static bool vmx_get_nmi_mask(struct kvm_vcpu *vcpu)
{
 if (!cpu_has_virtual_nmis())
  return to_vmx(vcpu)->soft_vnmi_blocked;
 else
  return !!(vmcs_read32(GUEST_INTERRUPTIBILITY_INFO) &
     GUEST_INTR_STATE_NMI);
}
