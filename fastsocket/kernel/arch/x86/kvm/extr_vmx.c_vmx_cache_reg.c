
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void** regs; int regs_avail; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef enum kvm_reg { ____Placeholder_kvm_reg } kvm_reg ;


 int GUEST_RIP ;
 int GUEST_RSP ;



 int __set_bit (int,unsigned long*) ;
 int enable_ept ;
 int ept_save_pdptrs (struct kvm_vcpu*) ;
 void* vmcs_readl (int ) ;

__attribute__((used)) static void vmx_cache_reg(struct kvm_vcpu *vcpu, enum kvm_reg reg)
{
 __set_bit(reg, (unsigned long *)&vcpu->arch.regs_avail);
 switch (reg) {
 case 128:
  vcpu->arch.regs[128] = vmcs_readl(GUEST_RSP);
  break;
 case 129:
  vcpu->arch.regs[129] = vmcs_readl(GUEST_RIP);
  break;
 case 130:
  if (enable_ept)
   ept_save_pdptrs(vcpu);
  break;
 default:
  break;
 }
}
