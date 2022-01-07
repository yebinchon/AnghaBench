
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_ia64_vcpu_stack {int dummy; } ;


 int memcpy (struct kvm_ia64_vcpu_stack*,struct kvm_vcpu*,int) ;

int kvm_arch_vcpu_ioctl_get_stack(struct kvm_vcpu *vcpu,
      struct kvm_ia64_vcpu_stack *stack)
{
 memcpy(stack, vcpu, sizeof(struct kvm_ia64_vcpu_stack));
 return 0;
}
