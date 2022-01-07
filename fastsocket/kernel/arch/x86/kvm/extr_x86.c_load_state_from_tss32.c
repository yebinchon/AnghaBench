
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tss_segment_32 {int eflags; int gs; int fs; int ds; int ss; int cs; int es; int ldt_selector; int edi; int esi; int ebp; int esp; int ebx; int edx; int ecx; int eax; int eip; int cr3; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int (* set_rflags ) (struct kvm_vcpu*,int) ;} ;


 int VCPU_REGS_RAX ;
 int VCPU_REGS_RBP ;
 int VCPU_REGS_RBX ;
 int VCPU_REGS_RCX ;
 int VCPU_REGS_RDI ;
 int VCPU_REGS_RDX ;
 int VCPU_REGS_RSI ;
 int VCPU_REGS_RSP ;
 int VCPU_SREG_CS ;
 int VCPU_SREG_DS ;
 int VCPU_SREG_ES ;
 int VCPU_SREG_FS ;
 int VCPU_SREG_GS ;
 int VCPU_SREG_LDTR ;
 int VCPU_SREG_SS ;
 scalar_t__ kvm_load_segment_descriptor (struct kvm_vcpu*,int ,int ) ;
 int kvm_load_segment_selector (struct kvm_vcpu*,int ,int ) ;
 int kvm_register_write (struct kvm_vcpu*,int ,int ) ;
 int kvm_rip_write (struct kvm_vcpu*,int ) ;
 int kvm_set_cr3 (struct kvm_vcpu*,int ) ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,int) ;

__attribute__((used)) static int load_state_from_tss32(struct kvm_vcpu *vcpu,
      struct tss_segment_32 *tss)
{
 kvm_set_cr3(vcpu, tss->cr3);

 kvm_rip_write(vcpu, tss->eip);
 kvm_x86_ops->set_rflags(vcpu, tss->eflags | 2);

 kvm_register_write(vcpu, VCPU_REGS_RAX, tss->eax);
 kvm_register_write(vcpu, VCPU_REGS_RCX, tss->ecx);
 kvm_register_write(vcpu, VCPU_REGS_RDX, tss->edx);
 kvm_register_write(vcpu, VCPU_REGS_RBX, tss->ebx);
 kvm_register_write(vcpu, VCPU_REGS_RSP, tss->esp);
 kvm_register_write(vcpu, VCPU_REGS_RBP, tss->ebp);
 kvm_register_write(vcpu, VCPU_REGS_RSI, tss->esi);
 kvm_register_write(vcpu, VCPU_REGS_RDI, tss->edi);





 kvm_load_segment_selector(vcpu, tss->ldt_selector, VCPU_SREG_LDTR);
 kvm_load_segment_selector(vcpu, tss->es, VCPU_SREG_ES);
 kvm_load_segment_selector(vcpu, tss->cs, VCPU_SREG_CS);
 kvm_load_segment_selector(vcpu, tss->ss, VCPU_SREG_SS);
 kvm_load_segment_selector(vcpu, tss->ds, VCPU_SREG_DS);
 kvm_load_segment_selector(vcpu, tss->fs, VCPU_SREG_FS);
 kvm_load_segment_selector(vcpu, tss->gs, VCPU_SREG_GS);





 if (kvm_load_segment_descriptor(vcpu, tss->ldt_selector, VCPU_SREG_LDTR))
  return 1;

 if (kvm_load_segment_descriptor(vcpu, tss->es, VCPU_SREG_ES))
  return 1;

 if (kvm_load_segment_descriptor(vcpu, tss->cs, VCPU_SREG_CS))
  return 1;

 if (kvm_load_segment_descriptor(vcpu, tss->ss, VCPU_SREG_SS))
  return 1;

 if (kvm_load_segment_descriptor(vcpu, tss->ds, VCPU_SREG_DS))
  return 1;

 if (kvm_load_segment_descriptor(vcpu, tss->fs, VCPU_SREG_FS))
  return 1;

 if (kvm_load_segment_descriptor(vcpu, tss->gs, VCPU_SREG_GS))
  return 1;
 return 0;
}
