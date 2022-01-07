
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int complete_insn_gp (struct kvm_vcpu*,int) ;
 int kvm_rdpmc (struct kvm_vcpu*) ;

__attribute__((used)) static int handle_rdpmc(struct kvm_vcpu *vcpu)
{
 int err;

 err = kvm_rdpmc(vcpu);
 complete_insn_gp(vcpu, err);

 return 1;
}
