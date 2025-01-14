
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_3__ {unsigned long cr3; } ;
struct kvm_vcpu {TYPE_2__* run; TYPE_1__ arch; int kvm; } ;
struct TYPE_4__ {scalar_t__ exit_reason; } ;


 int EXIT_QUALIFICATION ;
 scalar_t__ KVM_EXIT_SET_TPR ;
 unsigned long LMSW_SOURCE_DATA_SHIFT ;
 int X86_CR0_TS ;
 int complete_insn_gp (struct kvm_vcpu*,int) ;
 int irqchip_in_kernel (int ) ;
 void* kvm_get_cr8 (struct kvm_vcpu*) ;
 int kvm_inject_gp (struct kvm_vcpu*,int ) ;
 int kvm_lmsw (struct kvm_vcpu*,unsigned long) ;
 int kvm_read_cr0 (struct kvm_vcpu*) ;
 int kvm_read_cr0_bits (struct kvm_vcpu*,int ) ;
 void* kvm_register_read (struct kvm_vcpu*,int) ;
 int kvm_register_write (struct kvm_vcpu*,int,unsigned long) ;
 int kvm_set_cr0 (struct kvm_vcpu*,unsigned long) ;
 int kvm_set_cr3 (struct kvm_vcpu*,unsigned long) ;
 int kvm_set_cr4 (struct kvm_vcpu*,unsigned long) ;
 int kvm_set_cr8 (struct kvm_vcpu*,void*) ;
 int pr_unimpl (struct kvm_vcpu*,char*,int,int) ;
 int skip_emulated_instruction (struct kvm_vcpu*) ;
 int trace_kvm_cr_read (int,unsigned long) ;
 int trace_kvm_cr_write (int,int) ;
 unsigned long vmcs_readl (int ) ;
 int vmx_set_cr0 (struct kvm_vcpu*,int ) ;

__attribute__((used)) static int handle_cr(struct kvm_vcpu *vcpu)
{
 unsigned long exit_qualification, val;
 int cr;
 int reg;
 int err;

 exit_qualification = vmcs_readl(EXIT_QUALIFICATION);
 cr = exit_qualification & 15;
 reg = (exit_qualification >> 8) & 15;
 switch ((exit_qualification >> 4) & 3) {
 case 0:
  val = kvm_register_read(vcpu, reg);
  trace_kvm_cr_write(cr, val);
  switch (cr) {
  case 0:
   err = kvm_set_cr0(vcpu, val);
   complete_insn_gp(vcpu, err);
   return 1;
  case 3:
   err = kvm_set_cr3(vcpu, val);
   complete_insn_gp(vcpu, err);
   return 1;
  case 4:
   err = kvm_set_cr4(vcpu, val);
   complete_insn_gp(vcpu, err);
   return 1;
  case 8: {
    u8 cr8_prev = kvm_get_cr8(vcpu);
    u8 cr8 = kvm_register_read(vcpu, reg);
    if (kvm_set_cr8(vcpu, cr8))
     kvm_inject_gp(vcpu, 0);
    else
     skip_emulated_instruction(vcpu);
    if (irqchip_in_kernel(vcpu->kvm))
     return 1;
    if (cr8_prev <= cr8)
     return 1;
    vcpu->run->exit_reason = KVM_EXIT_SET_TPR;
    return 0;
   }
  };
  break;
 case 2:
  vmx_set_cr0(vcpu, kvm_read_cr0_bits(vcpu, ~X86_CR0_TS));
  trace_kvm_cr_write(0, kvm_read_cr0(vcpu));
  skip_emulated_instruction(vcpu);
  return 1;
 case 1:
  switch (cr) {
  case 3:
   kvm_register_write(vcpu, reg, vcpu->arch.cr3);
   trace_kvm_cr_read(cr, vcpu->arch.cr3);
   skip_emulated_instruction(vcpu);
   return 1;
  case 8:
   val = kvm_get_cr8(vcpu);
   kvm_register_write(vcpu, reg, val);
   trace_kvm_cr_read(cr, val);
   skip_emulated_instruction(vcpu);
   return 1;
  }
  break;
 case 3:
  val = (exit_qualification >> LMSW_SOURCE_DATA_SHIFT) & 0x0f;
  trace_kvm_cr_write(0, (kvm_read_cr0(vcpu) & ~0xful) | val);
  kvm_lmsw(vcpu, val);

  skip_emulated_instruction(vcpu);
  return 1;
 default:
  break;
 }
 vcpu->run->exit_reason = 0;
 pr_unimpl(vcpu, "unhandled control register: op %d cr %d\n",
        (int)(exit_qualification >> 4) & 3, cr);
 return 0;
}
