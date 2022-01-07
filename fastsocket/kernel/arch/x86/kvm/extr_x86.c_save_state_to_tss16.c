
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tss_segment_16 {void* ldt; void* ds; void* ss; void* cs; void* es; void* di; void* si; void* bp; void* sp; void* bx; void* dx; void* cx; void* ax; int flag; int ip; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int (* get_rflags ) (struct kvm_vcpu*) ;} ;


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
 int VCPU_SREG_LDTR ;
 int VCPU_SREG_SS ;
 void* get_segment_selector (struct kvm_vcpu*,int ) ;
 void* kvm_register_read (struct kvm_vcpu*,int ) ;
 int kvm_rip_read (struct kvm_vcpu*) ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*) ;

__attribute__((used)) static void save_state_to_tss16(struct kvm_vcpu *vcpu,
    struct tss_segment_16 *tss)
{
 tss->ip = kvm_rip_read(vcpu);
 tss->flag = kvm_x86_ops->get_rflags(vcpu);
 tss->ax = kvm_register_read(vcpu, VCPU_REGS_RAX);
 tss->cx = kvm_register_read(vcpu, VCPU_REGS_RCX);
 tss->dx = kvm_register_read(vcpu, VCPU_REGS_RDX);
 tss->bx = kvm_register_read(vcpu, VCPU_REGS_RBX);
 tss->sp = kvm_register_read(vcpu, VCPU_REGS_RSP);
 tss->bp = kvm_register_read(vcpu, VCPU_REGS_RBP);
 tss->si = kvm_register_read(vcpu, VCPU_REGS_RSI);
 tss->di = kvm_register_read(vcpu, VCPU_REGS_RDI);

 tss->es = get_segment_selector(vcpu, VCPU_SREG_ES);
 tss->cs = get_segment_selector(vcpu, VCPU_SREG_CS);
 tss->ss = get_segment_selector(vcpu, VCPU_SREG_SS);
 tss->ds = get_segment_selector(vcpu, VCPU_SREG_DS);
 tss->ldt = get_segment_selector(vcpu, VCPU_SREG_LDTR);
}
