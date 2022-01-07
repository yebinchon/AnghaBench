
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 int VCPU_REGS_RCX ;
 int kvm_read_edx_eax (struct kvm_vcpu*) ;
 int kvm_register_read (struct kvm_vcpu*,int ) ;
 scalar_t__ kvm_set_xcr (struct kvm_vcpu*,int ,int ) ;
 int skip_emulated_instruction (struct kvm_vcpu*) ;

__attribute__((used)) static int handle_xsetbv(struct kvm_vcpu *vcpu)
{
 u64 new_bv = kvm_read_edx_eax(vcpu);
 u32 index = kvm_register_read(vcpu, VCPU_REGS_RCX);

 if (kvm_set_xcr(vcpu, index, new_bv) == 0)
  skip_emulated_instruction(vcpu);
 return 1;
}
