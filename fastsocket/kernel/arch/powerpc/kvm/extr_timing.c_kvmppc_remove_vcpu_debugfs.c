
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * debugfs_exit_timing; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int debugfs_remove (int *) ;

void kvmppc_remove_vcpu_debugfs(struct kvm_vcpu *vcpu)
{
 if (vcpu->arch.debugfs_exit_timing) {
  debugfs_remove(vcpu->arch.debugfs_exit_timing);
  vcpu->arch.debugfs_exit_timing = ((void*)0);
 }
}
