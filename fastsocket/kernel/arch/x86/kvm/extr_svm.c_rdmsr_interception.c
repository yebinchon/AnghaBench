
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_6__ {int* regs; } ;
struct TYPE_7__ {TYPE_1__ arch; } ;
struct vcpu_svm {TYPE_2__ vcpu; scalar_t__ next_rip; } ;


 size_t VCPU_REGS_RAX ;
 size_t VCPU_REGS_RCX ;
 size_t VCPU_REGS_RDX ;
 int kvm_inject_gp (TYPE_2__*,int ) ;
 scalar_t__ kvm_rip_read (TYPE_2__*) ;
 int skip_emulated_instruction (TYPE_2__*) ;
 scalar_t__ svm_get_msr (TYPE_2__*,int,int*) ;
 int trace_kvm_msr_read (int,int) ;

__attribute__((used)) static int rdmsr_interception(struct vcpu_svm *svm)
{
 u32 ecx = svm->vcpu.arch.regs[VCPU_REGS_RCX];
 u64 data;

 if (svm_get_msr(&svm->vcpu, ecx, &data))
  kvm_inject_gp(&svm->vcpu, 0);
 else {
  trace_kvm_msr_read(ecx, data);

  svm->vcpu.arch.regs[VCPU_REGS_RAX] = data & 0xffffffff;
  svm->vcpu.arch.regs[VCPU_REGS_RDX] = data >> 32;
  svm->next_rip = kvm_rip_read(&svm->vcpu) + 2;
  skip_emulated_instruction(&svm->vcpu);
 }
 return 1;
}
