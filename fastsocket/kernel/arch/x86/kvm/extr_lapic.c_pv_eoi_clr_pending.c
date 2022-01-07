
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int apic_attention; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_5__ {scalar_t__ msr_val; } ;
struct TYPE_6__ {TYPE_1__ pv_eoi; } ;
struct TYPE_8__ {TYPE_2__ arch; } ;


 int KVM_APIC_PV_EOI_PENDING ;
 int KVM_PV_EOI_DISABLED ;
 int __clear_bit (int ,int *) ;
 int apic_debug (char*,unsigned long long) ;
 scalar_t__ pv_eoi_put_user (struct kvm_vcpu*,int ) ;
 TYPE_4__* vcpi ;

__attribute__((used)) static void pv_eoi_clr_pending(struct kvm_vcpu *vcpu)
{
 if (pv_eoi_put_user(vcpu, KVM_PV_EOI_DISABLED) < 0) {
  apic_debug("Can't clear EOI MSR value: 0x%llx\n",
      (unsigned long long)vcpi->arch.pv_eoi.msr_val);
  return;
 }
 __clear_bit(KVM_APIC_PV_EOI_PENDING, &vcpu->arch.apic_attention);
}
