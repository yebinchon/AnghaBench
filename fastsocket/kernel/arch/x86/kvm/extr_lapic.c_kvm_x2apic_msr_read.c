
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {int kvm; TYPE_1__ arch; } ;
struct kvm_lapic {int dummy; } ;


 int APIC_BASE_MSR ;
 int APIC_ICR2 ;
 scalar_t__ apic_reg_read (struct kvm_lapic*,int,int,int*) ;
 int apic_x2apic_mode (struct kvm_lapic*) ;
 int irqchip_in_kernel (int ) ;

int kvm_x2apic_msr_read(struct kvm_vcpu *vcpu, u32 msr, u64 *data)
{
 struct kvm_lapic *apic = vcpu->arch.apic;
 u32 reg = (msr - APIC_BASE_MSR) << 4, low, high = 0;

 if (!irqchip_in_kernel(vcpu->kvm) || !apic_x2apic_mode(apic))
  return 1;

 if (apic_reg_read(apic, reg, 4, &low))
  return 1;
 if (msr == 0x830)
  apic_reg_read(apic, APIC_ICR2, 4, &high);

 *data = (((u64)high) << 32) | low;

 return 0;
}
