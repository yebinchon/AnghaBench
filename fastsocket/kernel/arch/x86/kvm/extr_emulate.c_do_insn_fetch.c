
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x86_emulate_ops {int dummy; } ;
struct TYPE_2__ {unsigned int eip_orig; } ;
struct x86_emulate_ctxt {scalar_t__ cs_base; TYPE_1__ decode; } ;


 int X86EMUL_CONTINUE ;
 int X86EMUL_UNHANDLEABLE ;
 int do_fetch_insn_byte (struct x86_emulate_ctxt*,struct x86_emulate_ops*,int ,int ) ;

__attribute__((used)) static int do_insn_fetch(struct x86_emulate_ctxt *ctxt,
    struct x86_emulate_ops *ops,
    unsigned long eip, void *dest, unsigned size)
{
 int rc;


 if (eip + size - ctxt->decode.eip_orig > 15)
  return X86EMUL_UNHANDLEABLE;
 eip += ctxt->cs_base;
 while (size--) {
  rc = do_fetch_insn_byte(ctxt, ops, eip++, dest++);
  if (rc != X86EMUL_CONTINUE)
   return rc;
 }
 return X86EMUL_CONTINUE;
}
