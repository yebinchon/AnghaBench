
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int VCPU_REGS_RAX ;
 int VCPU_REGS_RDX ;
 unsigned int kvm_register_read (struct kvm_vcpu*,int ) ;

__attribute__((used)) static inline u64 kvm_read_edx_eax(struct kvm_vcpu *vcpu)
{
 return (kvm_register_read(vcpu, VCPU_REGS_RAX) & -1u)
  | ((u64)(kvm_register_read(vcpu, VCPU_REGS_RDX) & -1u) << 32);
}
