
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int (* get_rflags ) (struct kvm_vcpu*) ;} ;


 int VCPU_SREG_LDTR ;
 int VCPU_SREG_TR ;
 int X86_EFLAGS_VM ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*) ;

__attribute__((used)) static int is_vm86_segment(struct kvm_vcpu *vcpu, int seg)
{
 return (seg != VCPU_SREG_LDTR) &&
  (seg != VCPU_SREG_TR) &&
  (kvm_x86_ops->get_rflags(vcpu) & X86_EFLAGS_VM);
}
