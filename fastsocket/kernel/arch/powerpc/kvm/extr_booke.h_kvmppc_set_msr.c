
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int msr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int EMULATED_MTMSRWE_EXITS ;
 int MSR_PR ;
 int MSR_WE ;
 int kvm_vcpu_block (struct kvm_vcpu*) ;
 int kvmppc_mmu_priv_switch (struct kvm_vcpu*,int) ;
 int kvmppc_set_exit_type (struct kvm_vcpu*,int ) ;

__attribute__((used)) static inline void kvmppc_set_msr(struct kvm_vcpu *vcpu, u32 new_msr)
{
 if ((new_msr & MSR_PR) != (vcpu->arch.msr & MSR_PR))
  kvmppc_mmu_priv_switch(vcpu, new_msr & MSR_PR);

 vcpu->arch.msr = new_msr;

 if (vcpu->arch.msr & MSR_WE) {
  kvm_vcpu_block(vcpu);
  kvmppc_set_exit_type(vcpu, EMULATED_MTMSRWE_EXITS);
 };
}
