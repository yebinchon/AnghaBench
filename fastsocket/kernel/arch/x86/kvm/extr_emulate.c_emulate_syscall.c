
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef void* u16 ;
struct x86_emulate_ops {int dummy; } ;
struct decode_cache {int* regs; int eip; } ;
struct x86_emulate_ctxt {scalar_t__ mode; int eflags; int vcpu; struct decode_cache decode; } ;
struct kvm_segment {int l; scalar_t__ db; void* selector; } ;
struct TYPE_2__ {int (* get_msr ) (int ,int ,int*) ;int (* set_segment ) (int ,struct kvm_segment*,int ) ;} ;


 int EFER_SCE ;
 int EFLG_IF ;
 int EFLG_RF ;
 int EFLG_VM ;
 int MSR_CSTAR ;
 int MSR_EFER ;
 int MSR_LSTAR ;
 int MSR_STAR ;
 int MSR_SYSCALL_MASK ;
 int UD_VECTOR ;
 size_t VCPU_REGS_R11 ;
 size_t VCPU_REGS_RCX ;
 int VCPU_SREG_CS ;
 int VCPU_SREG_SS ;
 int X86EMUL_CONTINUE ;
 scalar_t__ X86EMUL_MODE_PROT64 ;
 scalar_t__ X86EMUL_MODE_REAL ;
 scalar_t__ X86EMUL_MODE_VM86 ;
 int X86EMUL_PROPAGATE_FAULT ;
 int X86EMUL_UNHANDLEABLE ;
 int em_syscall_is_enabled (struct x86_emulate_ctxt*,struct x86_emulate_ops*) ;
 scalar_t__ is_long_mode (int ) ;
 int kvm_queue_exception (int ,int ) ;
 TYPE_1__* kvm_x86_ops ;
 int setup_syscalls_segments (struct x86_emulate_ctxt*,struct kvm_segment*,struct kvm_segment*) ;
 int stub1 (int ,int ,int*) ;
 int stub2 (int ,int ,int*) ;
 int stub3 (int ,struct kvm_segment*,int ) ;
 int stub4 (int ,struct kvm_segment*,int ) ;
 int stub5 (int ,int ,int*) ;
 int stub6 (int ,int ,int*) ;
 int stub7 (int ,int ,int*) ;

__attribute__((used)) static int
emulate_syscall(struct x86_emulate_ctxt *ctxt, struct x86_emulate_ops *ops)
{
 struct decode_cache *c = &ctxt->decode;
 struct kvm_segment cs, ss;
 u64 msr_data;
 u64 efer;


 if (ctxt->mode == X86EMUL_MODE_REAL || ctxt->mode == X86EMUL_MODE_VM86)
  return X86EMUL_UNHANDLEABLE;

 if (!(em_syscall_is_enabled(ctxt, ops))) {
  kvm_queue_exception(ctxt->vcpu, UD_VECTOR);
  return X86EMUL_PROPAGATE_FAULT;
 }

 setup_syscalls_segments(ctxt, &cs, &ss);

 kvm_x86_ops->get_msr(ctxt->vcpu, MSR_EFER, &efer);

 if (!(efer & EFER_SCE)) {
  kvm_queue_exception(ctxt->vcpu, UD_VECTOR);
  return X86EMUL_PROPAGATE_FAULT;
 }

 kvm_x86_ops->get_msr(ctxt->vcpu, MSR_STAR, &msr_data);
 msr_data >>= 32;
 cs.selector = (u16)(msr_data & 0xfffc);
 ss.selector = (u16)(msr_data + 8);

 if (is_long_mode(ctxt->vcpu)) {
  cs.db = 0;
  cs.l = 1;
 }
 kvm_x86_ops->set_segment(ctxt->vcpu, &cs, VCPU_SREG_CS);
 kvm_x86_ops->set_segment(ctxt->vcpu, &ss, VCPU_SREG_SS);

 c->regs[VCPU_REGS_RCX] = c->eip;
 if (is_long_mode(ctxt->vcpu)) {
 } else {

  kvm_x86_ops->get_msr(ctxt->vcpu, MSR_STAR, &msr_data);
  c->eip = (u32)msr_data;

  ctxt->eflags &= ~(EFLG_VM | EFLG_IF | EFLG_RF);
 }

 return X86EMUL_CONTINUE;
}
