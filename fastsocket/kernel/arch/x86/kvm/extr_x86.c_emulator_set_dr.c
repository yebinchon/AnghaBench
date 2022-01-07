
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x86_emulate_ctxt {scalar_t__ mode; int vcpu; } ;
struct TYPE_2__ {int (* set_dr ) (int ,int,unsigned long,int*) ;} ;


 int X86EMUL_CONTINUE ;
 scalar_t__ X86EMUL_MODE_PROT64 ;
 int X86EMUL_UNHANDLEABLE ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (int ,int,unsigned long,int*) ;

int emulator_set_dr(struct x86_emulate_ctxt *ctxt, int dr, unsigned long value)
{
 unsigned long mask = (ctxt->mode == X86EMUL_MODE_PROT64) ? ~0ULL : ~0U;
 int exception;

 if (!kvm_x86_ops->set_dr)
  return X86EMUL_UNHANDLEABLE;

 kvm_x86_ops->set_dr(ctxt->vcpu, dr, value & mask, &exception);
 if (exception) {

  return X86EMUL_UNHANDLEABLE;
 }
 return X86EMUL_CONTINUE;
}
