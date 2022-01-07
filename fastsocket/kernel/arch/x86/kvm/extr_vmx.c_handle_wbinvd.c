
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int skip_emulated_instruction (struct kvm_vcpu*) ;

__attribute__((used)) static int handle_wbinvd(struct kvm_vcpu *vcpu)
{
 skip_emulated_instruction(vcpu);

 return 1;
}
