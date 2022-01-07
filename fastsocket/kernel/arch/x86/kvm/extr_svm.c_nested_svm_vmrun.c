
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {int int_ctl; int event_inj; int event_inj_err; scalar_t__ tsc_offset; int int_state; int int_vector; int exit_int_info; int exit_int_info_err; int intercept; int intercept_exceptions; int intercept_dr_write; int intercept_dr_read; int intercept_cr_write; int intercept_cr_read; int msrpm_base_pa; } ;
struct TYPE_15__ {int rflags; int cpl; int dr6; int dr7; int rip; int rsp; int rax; int cr2; int cr3; int cr4; int cr0; int efer; int idtr; int gdtr; int ds; int ss; int cs; int es; } ;
struct vmcb {TYPE_4__ control; TYPE_1__ save; } ;
struct TYPE_17__ {int hflags; int cr2; int cr3; int cr4; int shadow_efer; } ;
struct TYPE_19__ {TYPE_3__ arch; } ;
struct TYPE_16__ {int intercept; int intercept_exceptions; int intercept_dr_write; int intercept_dr_read; int intercept_cr_write; int intercept_cr_read; int vmcb_msrpm; int vmcb; struct vmcb* hsave; } ;
struct vcpu_svm {struct vmcb* vmcb; TYPE_5__ vcpu; TYPE_2__ nested; int next_rip; } ;


 int HF_HIF_MASK ;
 int HF_VINTR_MASK ;
 int KM_USER0 ;
 int SVM_EVTINJ_VALID ;
 int VCPU_REGS_RAX ;
 int VCPU_REGS_RIP ;
 int VCPU_REGS_RSP ;
 int VMCB_CR ;
 int V_INTR_MASKING_MASK ;
 int V_IRQ_MASK ;
 int X86_EFLAGS_IF ;
 int copy_vmcb_control_area (struct vmcb*,struct vmcb*) ;
 int enable_gif (struct vcpu_svm*) ;
 int kvm_clear_exception_queue (TYPE_5__*) ;
 int kvm_clear_interrupt_queue (TYPE_5__*) ;
 int kvm_mmu_reset_context (TYPE_5__*) ;
 int kvm_read_cr0 (TYPE_5__*) ;
 int kvm_register_write (TYPE_5__*,int ,int ) ;
 int kvm_set_cr3 (TYPE_5__*,int ) ;
 int mark_all_dirty (struct vmcb*) ;
 int mark_dirty (struct vmcb*,int ) ;
 struct vmcb* nested_svm_map (struct vcpu_svm*,int ,int ) ;
 int nested_svm_unmap (struct vmcb*,int ) ;
 scalar_t__ npt_enabled ;
 int nsvm_printk (char*,int,...) ;
 int svm_flush_tlb (TYPE_5__*) ;
 int svm_set_cr0 (TYPE_5__*,int ) ;
 int svm_set_cr4 (TYPE_5__*,int ) ;
 int svm_set_efer (TYPE_5__*,int ) ;

__attribute__((used)) static bool nested_svm_vmrun(struct vcpu_svm *svm)
{
 struct vmcb *nested_vmcb;
 struct vmcb *hsave = svm->nested.hsave;
 struct vmcb *vmcb = svm->vmcb;

 nested_vmcb = nested_svm_map(svm, svm->vmcb->save.rax, KM_USER0);
 if (!nested_vmcb)
  return 0;


 svm->nested.vmcb = svm->vmcb->save.rax;


 kvm_clear_exception_queue(&svm->vcpu);
 kvm_clear_interrupt_queue(&svm->vcpu);



 hsave->save.es = vmcb->save.es;
 hsave->save.cs = vmcb->save.cs;
 hsave->save.ss = vmcb->save.ss;
 hsave->save.ds = vmcb->save.ds;
 hsave->save.gdtr = vmcb->save.gdtr;
 hsave->save.idtr = vmcb->save.idtr;
 hsave->save.efer = svm->vcpu.arch.shadow_efer;
 hsave->save.cr0 = kvm_read_cr0(&svm->vcpu);
 hsave->save.cr4 = svm->vcpu.arch.cr4;
 hsave->save.rflags = vmcb->save.rflags;
 hsave->save.rip = svm->next_rip;
 hsave->save.rsp = vmcb->save.rsp;
 hsave->save.rax = vmcb->save.rax;
 if (npt_enabled)
  hsave->save.cr3 = vmcb->save.cr3;
 else
  hsave->save.cr3 = svm->vcpu.arch.cr3;

 copy_vmcb_control_area(hsave, vmcb);

 if (svm->vmcb->save.rflags & X86_EFLAGS_IF)
  svm->vcpu.arch.hflags |= HF_HIF_MASK;
 else
  svm->vcpu.arch.hflags &= ~HF_HIF_MASK;


 svm->vmcb->save.es = nested_vmcb->save.es;
 svm->vmcb->save.cs = nested_vmcb->save.cs;
 svm->vmcb->save.ss = nested_vmcb->save.ss;
 svm->vmcb->save.ds = nested_vmcb->save.ds;
 svm->vmcb->save.gdtr = nested_vmcb->save.gdtr;
 svm->vmcb->save.idtr = nested_vmcb->save.idtr;
 svm->vmcb->save.rflags = nested_vmcb->save.rflags;
 svm_set_efer(&svm->vcpu, nested_vmcb->save.efer);
 svm_set_cr0(&svm->vcpu, nested_vmcb->save.cr0);
 svm_set_cr4(&svm->vcpu, nested_vmcb->save.cr4);
 if (npt_enabled) {
  svm->vmcb->save.cr3 = nested_vmcb->save.cr3;
  svm->vcpu.arch.cr3 = nested_vmcb->save.cr3;
 } else {
  (void)kvm_set_cr3(&svm->vcpu, nested_vmcb->save.cr3);
  kvm_mmu_reset_context(&svm->vcpu);
 }
 mark_dirty(svm->vmcb, VMCB_CR);
 svm->vmcb->save.cr2 = svm->vcpu.arch.cr2 = nested_vmcb->save.cr2;
 kvm_register_write(&svm->vcpu, VCPU_REGS_RAX, nested_vmcb->save.rax);
 kvm_register_write(&svm->vcpu, VCPU_REGS_RSP, nested_vmcb->save.rsp);
 kvm_register_write(&svm->vcpu, VCPU_REGS_RIP, nested_vmcb->save.rip);

 svm->vmcb->save.rax = nested_vmcb->save.rax;
 svm->vmcb->save.rsp = nested_vmcb->save.rsp;
 svm->vmcb->save.rip = nested_vmcb->save.rip;
 svm->vmcb->save.dr7 = nested_vmcb->save.dr7;
 svm->vmcb->save.dr6 = nested_vmcb->save.dr6;
 svm->vmcb->save.cpl = nested_vmcb->save.cpl;



 svm->vmcb->control.intercept_cr_read |=
  nested_vmcb->control.intercept_cr_read;
 svm->vmcb->control.intercept_cr_write |=
  nested_vmcb->control.intercept_cr_write;
 svm->vmcb->control.intercept_dr_read |=
  nested_vmcb->control.intercept_dr_read;
 svm->vmcb->control.intercept_dr_write |=
  nested_vmcb->control.intercept_dr_write;
 svm->vmcb->control.intercept_exceptions |=
  nested_vmcb->control.intercept_exceptions;

 svm->vmcb->control.intercept |= nested_vmcb->control.intercept;

 svm->nested.vmcb_msrpm = nested_vmcb->control.msrpm_base_pa;


 svm->nested.intercept_cr_read = nested_vmcb->control.intercept_cr_read;
 svm->nested.intercept_cr_write = nested_vmcb->control.intercept_cr_write;
 svm->nested.intercept_dr_read = nested_vmcb->control.intercept_dr_read;
 svm->nested.intercept_dr_write = nested_vmcb->control.intercept_dr_write;
 svm->nested.intercept_exceptions = nested_vmcb->control.intercept_exceptions;
 svm->nested.intercept = nested_vmcb->control.intercept;

 svm_flush_tlb(&svm->vcpu);
 svm->vmcb->control.exit_int_info = nested_vmcb->control.exit_int_info;
 svm->vmcb->control.exit_int_info_err = nested_vmcb->control.exit_int_info_err;
 svm->vmcb->control.int_ctl = nested_vmcb->control.int_ctl | V_INTR_MASKING_MASK;
 if (nested_vmcb->control.int_ctl & V_IRQ_MASK) {
  nsvm_printk("nSVM Injecting Interrupt: 0x%x\n",
    nested_vmcb->control.int_ctl);
 }
 if (nested_vmcb->control.int_ctl & V_INTR_MASKING_MASK)
  svm->vcpu.arch.hflags |= HF_VINTR_MASK;
 else
  svm->vcpu.arch.hflags &= ~HF_VINTR_MASK;

 nsvm_printk("nSVM exit_int_info: 0x%x | int_state: 0x%x\n",
   nested_vmcb->control.exit_int_info,
   nested_vmcb->control.int_state);

 svm->vmcb->control.int_vector = nested_vmcb->control.int_vector;
 svm->vmcb->control.int_state = nested_vmcb->control.int_state;
 svm->vmcb->control.tsc_offset += nested_vmcb->control.tsc_offset;
 if (nested_vmcb->control.event_inj & SVM_EVTINJ_VALID)
  nsvm_printk("Injecting Event: 0x%x\n",
    nested_vmcb->control.event_inj);
 svm->vmcb->control.event_inj = nested_vmcb->control.event_inj;
 svm->vmcb->control.event_inj_err = nested_vmcb->control.event_inj_err;

 nested_svm_unmap(nested_vmcb, KM_USER0);

 enable_gif(svm);

 mark_all_dirty(svm->vmcb);

 return 1;
}
