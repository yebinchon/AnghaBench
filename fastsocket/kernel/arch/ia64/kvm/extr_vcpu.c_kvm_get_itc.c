
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {scalar_t__ is_sn2; } ;
struct kvm {TYPE_1__ arch; } ;


 scalar_t__ KVM_VM_BASE ;
 long* SN_RTC_BASE ;
 int _IA64_REG_AR_ITC ;
 long ia64_getreg (int ) ;

__attribute__((used)) static long kvm_get_itc(struct kvm_vcpu *vcpu)
{







  return ia64_getreg(_IA64_REG_AR_ITC);
}
