
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvm_emulate_halt (struct kvm_vcpu*) ;
 int skip_emulated_instruction (struct kvm_vcpu*) ;

__attribute__((used)) static int handle_halt(struct kvm_vcpu *vcpu)
{
 skip_emulated_instruction(vcpu);
 return kvm_emulate_halt(vcpu);
}
