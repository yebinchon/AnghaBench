
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
typedef void* u16 ;
struct decode_cache {int rex_prefix; int * regs; int eip; } ;
struct x86_emulate_ctxt {scalar_t__ mode; TYPE_2__* vcpu; struct decode_cache decode; } ;
struct kvm_segment {int dpl; int selector; int l; int db; } ;
struct TYPE_9__ {int (* set_segment ) (TYPE_2__*,struct kvm_segment*,int ) ;int (* get_msr ) (TYPE_2__*,int ,int*) ;} ;
struct TYPE_7__ {int * regs; } ;
struct TYPE_8__ {TYPE_1__ arch; } ;


 int MSR_IA32_SYSENTER_CS ;
 int SELECTOR_RPL_MASK ;
 size_t VCPU_REGS_RCX ;
 size_t VCPU_REGS_RDX ;
 size_t VCPU_REGS_RSP ;
 int VCPU_SREG_CS ;
 int VCPU_SREG_SS ;
 int X86EMUL_CONTINUE ;


 scalar_t__ X86EMUL_MODE_REAL ;
 scalar_t__ X86EMUL_MODE_VM86 ;
 int X86EMUL_PROPAGATE_FAULT ;
 int X86EMUL_UNHANDLEABLE ;
 int kvm_inject_gp (TYPE_2__*,int ) ;
 TYPE_5__* kvm_x86_ops ;
 int setup_syscalls_segments (struct x86_emulate_ctxt*,struct kvm_segment*,struct kvm_segment*) ;
 int stub1 (TYPE_2__*,int ,int*) ;
 int stub2 (TYPE_2__*,struct kvm_segment*,int ) ;
 int stub3 (TYPE_2__*,struct kvm_segment*,int ) ;

__attribute__((used)) static int
emulate_sysexit(struct x86_emulate_ctxt *ctxt)
{
 struct decode_cache *c = &ctxt->decode;
 struct kvm_segment cs, ss;
 u64 msr_data;
 int usermode;


 if (ctxt->mode == X86EMUL_MODE_REAL ||
     ctxt->mode == X86EMUL_MODE_VM86) {
  kvm_inject_gp(ctxt->vcpu, 0);
  return X86EMUL_UNHANDLEABLE;
 }

 setup_syscalls_segments(ctxt, &cs, &ss);

 if ((c->rex_prefix & 0x8) != 0x0)
  usermode = 128;
 else
  usermode = 129;

 cs.dpl = 3;
 ss.dpl = 3;
 kvm_x86_ops->get_msr(ctxt->vcpu, MSR_IA32_SYSENTER_CS, &msr_data);
 switch (usermode) {
 case 129:
  cs.selector = (u16)(msr_data + 16);
  if ((msr_data & 0xfffc) == 0x0) {
   kvm_inject_gp(ctxt->vcpu, 0);
   return X86EMUL_PROPAGATE_FAULT;
  }
  ss.selector = (u16)(msr_data + 24);
  break;
 case 128:
  cs.selector = (u16)(msr_data + 32);
  if (msr_data == 0x0) {
   kvm_inject_gp(ctxt->vcpu, 0);
   return X86EMUL_PROPAGATE_FAULT;
  }
  ss.selector = cs.selector + 8;
  cs.db = 0;
  cs.l = 1;
  break;
 }
 cs.selector |= SELECTOR_RPL_MASK;
 ss.selector |= SELECTOR_RPL_MASK;

 kvm_x86_ops->set_segment(ctxt->vcpu, &cs, VCPU_SREG_CS);
 kvm_x86_ops->set_segment(ctxt->vcpu, &ss, VCPU_SREG_SS);

 c->eip = ctxt->vcpu->arch.regs[VCPU_REGS_RDX];
 c->regs[VCPU_REGS_RSP] = ctxt->vcpu->arch.regs[VCPU_REGS_RCX];

 return X86EMUL_CONTINUE;
}
