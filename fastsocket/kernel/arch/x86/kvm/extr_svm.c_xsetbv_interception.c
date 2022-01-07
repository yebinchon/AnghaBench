
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vcpu_svm {int vcpu; scalar_t__ next_rip; } ;


 int VCPU_REGS_RCX ;
 int kvm_read_edx_eax (int *) ;
 int kvm_register_read (int *,int ) ;
 scalar_t__ kvm_rip_read (int *) ;
 scalar_t__ kvm_set_xcr (int *,int ,int ) ;
 int skip_emulated_instruction (int *) ;

__attribute__((used)) static int xsetbv_interception(struct vcpu_svm *svm)
{
 u64 new_bv = kvm_read_edx_eax(&svm->vcpu);
 u32 index = kvm_register_read(&svm->vcpu, VCPU_REGS_RCX);

 if (kvm_set_xcr(&svm->vcpu, index, new_bv) == 0) {
  svm->next_rip = kvm_rip_read(&svm->vcpu) + 3;
  skip_emulated_instruction(&svm->vcpu);
 }

 return 1;
}
