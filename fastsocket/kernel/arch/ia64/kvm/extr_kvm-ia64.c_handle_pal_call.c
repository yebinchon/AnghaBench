
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int hardware_exit_reason; } ;
struct kvm_run {TYPE_1__ hw; int exit_reason; } ;
struct exit_ctl_data {scalar_t__ exit_reason; } ;


 scalar_t__ EXIT_REASON_PAL_CALL ;
 int KVM_EXIT_UNKNOWN ;
 struct exit_ctl_data* kvm_get_exit_data (struct kvm_vcpu*) ;
 int kvm_pal_emul (struct kvm_vcpu*,struct kvm_run*) ;

__attribute__((used)) static int handle_pal_call(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
{
 struct exit_ctl_data *p;

 p = kvm_get_exit_data(vcpu);

 if (p->exit_reason == EXIT_REASON_PAL_CALL)
  return kvm_pal_emul(vcpu, kvm_run);
 else {
  kvm_run->exit_reason = KVM_EXIT_UNKNOWN;
  kvm_run->hw.hardware_exit_reason = 2;
  return 0;
 }
}
