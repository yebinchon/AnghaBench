
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cr0; int xcr0; int guest_fpu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int X86_CR0_ET ;
 int XSTATE_FP ;
 int fpu_alloc (int *) ;
 int fpu_finit (int *) ;

void fx_init(struct kvm_vcpu *vcpu)
{
 fpu_alloc(&vcpu->arch.guest_fpu);
 fpu_finit(&vcpu->arch.guest_fpu);




 vcpu->arch.xcr0 = XSTATE_FP;

 vcpu->arch.cr0 |= X86_CR0_ET;
}
