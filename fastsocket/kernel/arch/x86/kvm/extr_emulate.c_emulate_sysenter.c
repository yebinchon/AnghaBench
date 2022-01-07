
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct decode_cache {int eip; int* regs; } ;
struct x86_emulate_ctxt {int mode; int eflags; int vcpu; struct decode_cache decode; } ;
struct kvm_segment {int selector; int l; scalar_t__ db; } ;
struct TYPE_2__ {int (* get_msr ) (int ,int ,int*) ;int (* set_segment ) (int ,struct kvm_segment*,int ) ;} ;


 int EFLG_IF ;
 int EFLG_RF ;
 int EFLG_VM ;
 int MSR_IA32_SYSENTER_CS ;
 int MSR_IA32_SYSENTER_EIP ;
 int MSR_IA32_SYSENTER_ESP ;
 int SELECTOR_RPL_MASK ;
 size_t VCPU_REGS_RSP ;
 int VCPU_SREG_CS ;
 int VCPU_SREG_SS ;
 int X86EMUL_CONTINUE ;


 int X86EMUL_MODE_REAL ;
 int X86EMUL_PROPAGATE_FAULT ;
 int X86EMUL_UNHANDLEABLE ;
 scalar_t__ is_long_mode (int ) ;
 int kvm_inject_gp (int ,int ) ;
 TYPE_1__* kvm_x86_ops ;
 int setup_syscalls_segments (struct x86_emulate_ctxt*,struct kvm_segment*,struct kvm_segment*) ;
 int stub1 (int ,int ,int*) ;
 int stub2 (int ,struct kvm_segment*,int ) ;
 int stub3 (int ,struct kvm_segment*,int ) ;
 int stub4 (int ,int ,int*) ;
 int stub5 (int ,int ,int*) ;

__attribute__((used)) static int
emulate_sysenter(struct x86_emulate_ctxt *ctxt)
{
 struct decode_cache *c = &ctxt->decode;
 struct kvm_segment cs, ss;
 u64 msr_data;


 if (ctxt->mode == X86EMUL_MODE_REAL) {
  kvm_inject_gp(ctxt->vcpu, 0);
  return X86EMUL_UNHANDLEABLE;
 }




 if (ctxt->mode == 128)
  return X86EMUL_UNHANDLEABLE;

 setup_syscalls_segments(ctxt, &cs, &ss);

 kvm_x86_ops->get_msr(ctxt->vcpu, MSR_IA32_SYSENTER_CS, &msr_data);
 switch (ctxt->mode) {
 case 129:
  if ((msr_data & 0xfffc) == 0x0) {
   kvm_inject_gp(ctxt->vcpu, 0);
   return X86EMUL_PROPAGATE_FAULT;
  }
  break;
 case 128:
  if (msr_data == 0x0) {
   kvm_inject_gp(ctxt->vcpu, 0);
   return X86EMUL_PROPAGATE_FAULT;
  }
  break;
 }

 ctxt->eflags &= ~(EFLG_VM | EFLG_IF | EFLG_RF);
 cs.selector = (u16)msr_data;
 cs.selector &= ~SELECTOR_RPL_MASK;
 ss.selector = cs.selector + 8;
 ss.selector &= ~SELECTOR_RPL_MASK;
 if (ctxt->mode == 128
  || is_long_mode(ctxt->vcpu)) {
  cs.db = 0;
  cs.l = 1;
 }

 kvm_x86_ops->set_segment(ctxt->vcpu, &cs, VCPU_SREG_CS);
 kvm_x86_ops->set_segment(ctxt->vcpu, &ss, VCPU_SREG_SS);

 kvm_x86_ops->get_msr(ctxt->vcpu, MSR_IA32_SYSENTER_EIP, &msr_data);
 c->eip = msr_data;

 kvm_x86_ops->get_msr(ctxt->vcpu, MSR_IA32_SYSENTER_ESP, &msr_data);
 c->regs[VCPU_REGS_RSP] = msr_data;

 return X86EMUL_CONTINUE;
}
