
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int (* set_cr0 ) (struct kvm_vcpu*,int ) ;} ;


 int X86EMUL_CONTINUE ;
 int X86_CR0_TS ;
 int kvm_read_cr0_bits (struct kvm_vcpu*,int ) ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,int ) ;

int emulate_clts(struct kvm_vcpu *vcpu)
{
 kvm_x86_ops->set_cr0(vcpu, kvm_read_cr0_bits(vcpu, ~X86_CR0_TS));
 return X86EMUL_CONTINUE;
}
