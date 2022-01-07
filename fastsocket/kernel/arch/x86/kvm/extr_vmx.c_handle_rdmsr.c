
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u64 ;
typedef unsigned int u32 ;
struct TYPE_2__ {unsigned int* regs; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 size_t VCPU_REGS_RAX ;
 size_t VCPU_REGS_RCX ;
 size_t VCPU_REGS_RDX ;
 int kvm_inject_gp (struct kvm_vcpu*,int ) ;
 int skip_emulated_instruction (struct kvm_vcpu*) ;
 int trace_kvm_msr_read (unsigned int,unsigned int) ;
 scalar_t__ vmx_get_msr (struct kvm_vcpu*,unsigned int,unsigned int*) ;

__attribute__((used)) static int handle_rdmsr(struct kvm_vcpu *vcpu)
{
 u32 ecx = vcpu->arch.regs[VCPU_REGS_RCX];
 u64 data;

 if (vmx_get_msr(vcpu, ecx, &data)) {
  kvm_inject_gp(vcpu, 0);
  return 1;
 }

 trace_kvm_msr_read(ecx, data);


 vcpu->arch.regs[VCPU_REGS_RAX] = data & -1u;
 vcpu->arch.regs[VCPU_REGS_RDX] = (data >> 32) & -1u;
 skip_emulated_instruction(vcpu);
 return 1;
}
