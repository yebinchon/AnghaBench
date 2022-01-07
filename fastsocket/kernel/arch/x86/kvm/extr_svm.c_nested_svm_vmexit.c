
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct vmcb_control_area {int exit_int_info; int event_inj; int int_ctl; scalar_t__ event_inj_err; scalar_t__ tlb_ctl; scalar_t__ exit_int_info_err; int exit_info_2; int exit_info_1; int exit_code_hi; int exit_code; int int_state; int int_vector; } ;
struct TYPE_17__ {int cr0; scalar_t__ cpl; scalar_t__ dr7; int rip; int rsp; int rax; int cr3; int cr4; int efer; int rflags; int idtr; int gdtr; int ds; int ss; int cs; int es; int dr6; int cr2; } ;
struct vmcb {struct vmcb_control_area control; TYPE_4__ save; } ;
struct TYPE_14__ {int pending; } ;
struct TYPE_15__ {int hflags; int cr3; TYPE_1__ exception; } ;
struct TYPE_18__ {TYPE_2__ arch; } ;
struct TYPE_16__ {int vmcb; struct vmcb* hsave; } ;
struct vcpu_svm {TYPE_5__ vcpu; struct vmcb* vmcb; TYPE_3__ nested; } ;


 int HF_VINTR_MASK ;
 int KM_USER0 ;
 int SVM_EVTINJ_VALID ;
 int VCPU_REGS_RAX ;
 int VCPU_REGS_RIP ;
 int VCPU_REGS_RSP ;
 int VMCB_CR ;
 int V_INTR_MASKING_MASK ;
 int X86_CR0_PE ;
 int copy_vmcb_control_area (struct vmcb*,struct vmcb*) ;
 int disable_gif (struct vcpu_svm*) ;
 int kvm_clear_exception_queue (TYPE_5__*) ;
 int kvm_clear_interrupt_queue (TYPE_5__*) ;
 int kvm_mmu_load (TYPE_5__*) ;
 int kvm_mmu_reset_context (TYPE_5__*) ;
 int kvm_register_write (TYPE_5__*,int ,int ) ;
 int kvm_set_cr3 (TYPE_5__*,int ) ;
 int mark_all_dirty (struct vmcb*) ;
 int mark_dirty (struct vmcb*,int ) ;
 struct vmcb* nested_svm_map (struct vcpu_svm*,int ,int ) ;
 int nested_svm_unmap (struct vmcb*,int ) ;
 scalar_t__ npt_enabled ;
 int nsvm_printk (char*) ;
 int svm_set_cr0 (TYPE_5__*,int) ;
 int svm_set_cr4 (TYPE_5__*,int ) ;
 int svm_set_efer (TYPE_5__*,int ) ;

__attribute__((used)) static int nested_svm_vmexit(struct vcpu_svm *svm)
{
 struct vmcb *nested_vmcb;
 struct vmcb *hsave = svm->nested.hsave;
 struct vmcb *vmcb = svm->vmcb;

 nested_vmcb = nested_svm_map(svm, svm->nested.vmcb, KM_USER0);
 if (!nested_vmcb)
  return 1;


 disable_gif(svm);

 nested_vmcb->save.es = vmcb->save.es;
 nested_vmcb->save.cs = vmcb->save.cs;
 nested_vmcb->save.ss = vmcb->save.ss;
 nested_vmcb->save.ds = vmcb->save.ds;
 nested_vmcb->save.gdtr = vmcb->save.gdtr;
 nested_vmcb->save.idtr = vmcb->save.idtr;
 if (npt_enabled)
  nested_vmcb->save.cr3 = vmcb->save.cr3;
 nested_vmcb->save.cr2 = vmcb->save.cr2;
 nested_vmcb->save.rflags = vmcb->save.rflags;
 nested_vmcb->save.rip = vmcb->save.rip;
 nested_vmcb->save.rsp = vmcb->save.rsp;
 nested_vmcb->save.rax = vmcb->save.rax;
 nested_vmcb->save.dr7 = vmcb->save.dr7;
 nested_vmcb->save.dr6 = vmcb->save.dr6;
 nested_vmcb->save.cpl = vmcb->save.cpl;

 nested_vmcb->control.int_ctl = vmcb->control.int_ctl;
 nested_vmcb->control.int_vector = vmcb->control.int_vector;
 nested_vmcb->control.int_state = vmcb->control.int_state;
 nested_vmcb->control.exit_code = vmcb->control.exit_code;
 nested_vmcb->control.exit_code_hi = vmcb->control.exit_code_hi;
 nested_vmcb->control.exit_info_1 = vmcb->control.exit_info_1;
 nested_vmcb->control.exit_info_2 = vmcb->control.exit_info_2;
 nested_vmcb->control.exit_int_info = vmcb->control.exit_int_info;
 nested_vmcb->control.exit_int_info_err = vmcb->control.exit_int_info_err;
 if (vmcb->control.event_inj & SVM_EVTINJ_VALID) {
  struct vmcb_control_area *nc = &nested_vmcb->control;

  nc->exit_int_info = vmcb->control.event_inj;
  nc->exit_int_info_err = vmcb->control.event_inj_err;
 }

 nested_vmcb->control.tlb_ctl = 0;
 nested_vmcb->control.event_inj = 0;
 nested_vmcb->control.event_inj_err = 0;


 if (!(svm->vcpu.arch.hflags & HF_VINTR_MASK))
  nested_vmcb->control.int_ctl &= ~V_INTR_MASKING_MASK;


 copy_vmcb_control_area(vmcb, hsave);


 if (svm->vcpu.arch.exception.pending == 1)
  nsvm_printk("WARNING: Pending Exception\n");

 kvm_clear_exception_queue(&svm->vcpu);
 kvm_clear_interrupt_queue(&svm->vcpu);


 svm->vmcb->save.es = hsave->save.es;
 svm->vmcb->save.cs = hsave->save.cs;
 svm->vmcb->save.ss = hsave->save.ss;
 svm->vmcb->save.ds = hsave->save.ds;
 svm->vmcb->save.gdtr = hsave->save.gdtr;
 svm->vmcb->save.idtr = hsave->save.idtr;
 svm->vmcb->save.rflags = hsave->save.rflags;
 svm_set_efer(&svm->vcpu, hsave->save.efer);
 svm_set_cr0(&svm->vcpu, hsave->save.cr0 | X86_CR0_PE);
 svm_set_cr4(&svm->vcpu, hsave->save.cr4);
 if (npt_enabled) {
  svm->vmcb->save.cr3 = hsave->save.cr3;
  svm->vcpu.arch.cr3 = hsave->save.cr3;
 } else {
  (void)kvm_set_cr3(&svm->vcpu, hsave->save.cr3);
 }
 mark_dirty(svm->vmcb, VMCB_CR);
 kvm_register_write(&svm->vcpu, VCPU_REGS_RAX, hsave->save.rax);
 kvm_register_write(&svm->vcpu, VCPU_REGS_RSP, hsave->save.rsp);
 kvm_register_write(&svm->vcpu, VCPU_REGS_RIP, hsave->save.rip);
 svm->vmcb->save.dr7 = 0;
 svm->vmcb->save.cpl = 0;
 svm->vmcb->control.exit_int_info = 0;


 svm->nested.vmcb = 0;

 mark_all_dirty(svm->vmcb);

 nested_svm_unmap(nested_vmcb, KM_USER0);

 kvm_mmu_reset_context(&svm->vcpu);
 kvm_mmu_load(&svm->vcpu);

 return 0;
}
