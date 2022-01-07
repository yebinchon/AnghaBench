
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {int dummy; } ;


 int APIC_TASKPRI ;
 scalar_t__ apic_get_reg (struct kvm_lapic*,int ) ;

u64 kvm_lapic_get_cr8(struct kvm_vcpu *vcpu)
{
 struct kvm_lapic *apic = vcpu->arch.apic;
 u64 tpr;

 if (!apic)
  return 0;
 tpr = (u64) apic_get_reg(apic, APIC_TASKPRI);

 return (tpr & 0xf0) >> 4;
}
