
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exit_ctl_data {scalar_t__ exit_reason; } ;
struct TYPE_2__ {struct exit_ctl_data exit_data; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ EXIT_REASON_DEBUG ;
 int panic_vm (struct kvm_vcpu*,char*) ;
 int vmm_sanity ;

__attribute__((used)) static void vmm_sanity_check(struct kvm_vcpu *vcpu)
{
 struct exit_ctl_data *p = &vcpu->arch.exit_data;

 if (!vmm_sanity && p->exit_reason != EXIT_REASON_DEBUG) {
  panic_vm(vcpu, "Failed to do vmm sanity check,"
   "it maybe caused by crashed vmm!!\n\n");
 }
}
