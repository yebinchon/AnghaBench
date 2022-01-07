
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef unsigned int u32 ;
struct msr_data {int data; unsigned int index; int host_initiated; } ;
struct TYPE_2__ {unsigned int* regs; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 size_t VCPU_REGS_RAX ;
 size_t VCPU_REGS_RCX ;
 size_t VCPU_REGS_RDX ;
 int kvm_inject_gp (struct kvm_vcpu*,int ) ;
 int skip_emulated_instruction (struct kvm_vcpu*) ;
 int trace_kvm_msr_write (unsigned int,int) ;
 scalar_t__ vmx_set_msr (struct kvm_vcpu*,struct msr_data*) ;

__attribute__((used)) static int handle_wrmsr(struct kvm_vcpu *vcpu)
{
 struct msr_data msr;
 u32 ecx = vcpu->arch.regs[VCPU_REGS_RCX];
 u64 data = (vcpu->arch.regs[VCPU_REGS_RAX] & -1u)
  | ((u64)(vcpu->arch.regs[VCPU_REGS_RDX] & -1u) << 32);

 trace_kvm_msr_write(ecx, data);

 msr.data = data;
 msr.index = ecx;
 msr.host_initiated = 0;
 if (vmx_set_msr(vcpu, &msr) != 0) {
  kvm_inject_gp(vcpu, 0);
  return 1;
 }

 skip_emulated_instruction(vcpu);
 return 1;
}
