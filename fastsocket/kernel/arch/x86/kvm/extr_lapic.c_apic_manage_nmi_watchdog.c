
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct kvm_lapic {TYPE_3__* vcpu; } ;
struct TYPE_6__ {TYPE_2__* kvm; int vcpu_id; } ;
struct TYPE_4__ {int vapics_in_nmi_mode; } ;
struct TYPE_5__ {TYPE_1__ arch; } ;


 int APIC_LVT0 ;
 int apic_debug (char*,int ) ;
 int apic_get_reg (struct kvm_lapic*,int ) ;
 int apic_lvt_nmi_mode (int ) ;

__attribute__((used)) static void apic_manage_nmi_watchdog(struct kvm_lapic *apic, u32 lvt0_val)
{
 int nmi_wd_enabled = apic_lvt_nmi_mode(apic_get_reg(apic, APIC_LVT0));

 if (apic_lvt_nmi_mode(lvt0_val)) {
  if (!nmi_wd_enabled) {
   apic_debug("Receive NMI setting on APIC_LVT0 "
       "for cpu %d\n", apic->vcpu->vcpu_id);
   apic->vcpu->kvm->arch.vapics_in_nmi_mode++;
  }
 } else if (nmi_wd_enabled)
  apic->vcpu->kvm->arch.vapics_in_nmi_mode--;
}
