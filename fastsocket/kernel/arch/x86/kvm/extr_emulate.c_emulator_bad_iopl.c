
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x86_emulate_ctxt {scalar_t__ mode; int eflags; int vcpu; } ;
struct TYPE_2__ {int (* get_cpl ) (int ) ;} ;


 int IOPL_SHIFT ;
 scalar_t__ X86EMUL_MODE_REAL ;
 scalar_t__ X86EMUL_MODE_VM86 ;
 int X86_EFLAGS_IOPL ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (int ) ;

__attribute__((used)) static bool emulator_bad_iopl(struct x86_emulate_ctxt *ctxt)
{
 int iopl;
 if (ctxt->mode == X86EMUL_MODE_REAL)
  return 0;
 if (ctxt->mode == X86EMUL_MODE_VM86)
  return 1;
 iopl = (ctxt->eflags & X86_EFLAGS_IOPL) >> IOPL_SHIFT;
 return kvm_x86_ops->get_cpl(ctxt->vcpu) > iopl;
}
