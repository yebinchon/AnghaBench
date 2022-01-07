
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exit_data; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_ia64_vcpu_stack {int * stack; } ;


 int memcpy (struct kvm_vcpu*,int *,int) ;

int kvm_arch_vcpu_ioctl_set_stack(struct kvm_vcpu *vcpu,
      struct kvm_ia64_vcpu_stack *stack)
{
 memcpy(vcpu + 1, &stack->stack[0] + sizeof(struct kvm_vcpu),
        sizeof(struct kvm_ia64_vcpu_stack) - sizeof(struct kvm_vcpu));

 vcpu->arch.exit_data = ((struct kvm_vcpu *)stack)->arch.exit_data;
 return 0;
}
