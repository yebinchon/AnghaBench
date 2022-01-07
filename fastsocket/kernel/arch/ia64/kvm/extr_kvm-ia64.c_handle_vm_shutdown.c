
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_run {int exit_reason; } ;


 int KVM_EXIT_SHUTDOWN ;

__attribute__((used)) static int handle_vm_shutdown(struct kvm_vcpu *vcpu,
  struct kvm_run *kvm_run)
{
 kvm_run->exit_reason = KVM_EXIT_SHUTDOWN;
 return 0;
}
