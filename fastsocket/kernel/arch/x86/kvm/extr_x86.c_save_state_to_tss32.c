
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tss_segment_32 {void* ldt_selector; void* gs; void* fs; void* ds; void* ss; void* cs; void* es; void* edi; void* esi; void* ebp; void* esp; void* ebx; void* edx; void* ecx; void* eax; int eflags; int eip; int cr3; } ;
struct TYPE_3__ {int cr3; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int (* get_rflags ) (struct kvm_vcpu*) ;} ;


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
 void* get_segment_selector (struct kvm_vcpu*,int ) ;
 void* kvm_register_read (struct kvm_vcpu*,int ) ;
 int kvm_rip_read (struct kvm_vcpu*) ;
 TYPE_2__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*) ;

__attribute__((used)) static void save_state_to_tss32(struct kvm_vcpu *vcpu,
    struct tss_segment_32 *tss)
{
 tss->cr3 = vcpu->arch.cr3;
 tss->eip = kvm_rip_read(vcpu);
 tss->eflags = kvm_x86_ops->get_rflags(vcpu);
 tss->eax = kvm_register_read(vcpu, VCPU_REGS_RAX);
 tss->ecx = kvm_register_read(vcpu, VCPU_REGS_RCX);
 tss->edx = kvm_register_read(vcpu, VCPU_REGS_RDX);
 tss->ebx = kvm_register_read(vcpu, VCPU_REGS_RBX);
 tss->esp = kvm_register_read(vcpu, VCPU_REGS_RSP);
 tss->ebp = kvm_register_read(vcpu, VCPU_REGS_RBP);
 tss->esi = kvm_register_read(vcpu, VCPU_REGS_RSI);
 tss->edi = kvm_register_read(vcpu, VCPU_REGS_RDI);
 tss->es = get_segment_selector(vcpu, VCPU_SREG_ES);
 tss->cs = get_segment_selector(vcpu, VCPU_SREG_CS);
 tss->ss = get_segment_selector(vcpu, VCPU_SREG_SS);
 tss->ds = get_segment_selector(vcpu, VCPU_SREG_DS);
 tss->fs = get_segment_selector(vcpu, VCPU_SREG_FS);
 tss->gs = get_segment_selector(vcpu, VCPU_SREG_GS);
 tss->ldt_selector = get_segment_selector(vcpu, VCPU_SREG_LDTR);
}
