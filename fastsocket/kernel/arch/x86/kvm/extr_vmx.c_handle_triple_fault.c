
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {TYPE_1__* run; } ;
struct TYPE_2__ {int exit_reason; } ;


 int KVM_EXIT_SHUTDOWN ;

__attribute__((used)) static int handle_triple_fault(struct kvm_vcpu *vcpu)
{
 vcpu->run->exit_reason = KVM_EXIT_SHUTDOWN;
 return 0;
}
