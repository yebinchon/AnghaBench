
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int hardware_exit_reason; } ;
struct kvm_run {TYPE_1__ hw; int exit_reason; } ;


 int KVM_EXIT_UNKNOWN ;

__attribute__((used)) static int handle_vm_error(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
{
 kvm_run->exit_reason = KVM_EXIT_UNKNOWN;
 kvm_run->hw.hardware_exit_reason = 1;
 return 0;
}
