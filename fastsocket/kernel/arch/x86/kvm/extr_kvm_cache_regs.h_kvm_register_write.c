
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* regs; int regs_avail; int regs_dirty; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef enum kvm_reg { ____Placeholder_kvm_reg } kvm_reg ;


 int __set_bit (int,unsigned long*) ;

__attribute__((used)) static inline void kvm_register_write(struct kvm_vcpu *vcpu,
          enum kvm_reg reg,
          unsigned long val)
{
 vcpu->arch.regs[reg] = val;
 __set_bit(reg, (unsigned long *)&vcpu->arch.regs_dirty);
 __set_bit(reg, (unsigned long *)&vcpu->arch.regs_avail);
}
