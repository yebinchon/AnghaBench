
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int * pdptrs; int regs_avail; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int (* cache_reg ) (struct kvm_vcpu*,int ) ;} ;


 int VCPU_EXREG_PDPTR ;
 TYPE_2__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,int ) ;
 int test_bit (int ,unsigned long*) ;

__attribute__((used)) static inline u64 kvm_pdptr_read(struct kvm_vcpu *vcpu, int index)
{
 if (!test_bit(VCPU_EXREG_PDPTR,
        (unsigned long *)&vcpu->arch.regs_avail))
  kvm_x86_ops->cache_reg(vcpu, VCPU_EXREG_PDPTR);

 return vcpu->arch.pdptrs[index];
}
