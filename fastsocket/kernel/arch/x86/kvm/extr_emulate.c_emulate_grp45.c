
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x86_emulate_ops {int dummy; } ;
struct TYPE_2__ {long val; } ;
struct decode_cache {int modrm_reg; long eip; TYPE_1__ src; int dst; } ;
struct x86_emulate_ctxt {int eflags; struct decode_cache decode; } ;


 int X86EMUL_CONTINUE ;
 int emulate_1op (char*,int ,int ) ;
 int emulate_push (struct x86_emulate_ctxt*) ;

__attribute__((used)) static inline int emulate_grp45(struct x86_emulate_ctxt *ctxt,
          struct x86_emulate_ops *ops)
{
 struct decode_cache *c = &ctxt->decode;

 switch (c->modrm_reg) {
 case 0:
  emulate_1op("inc", c->dst, ctxt->eflags);
  break;
 case 1:
  emulate_1op("dec", c->dst, ctxt->eflags);
  break;
 case 2: {
  long int old_eip;
  old_eip = c->eip;
  c->eip = c->src.val;
  c->src.val = old_eip;
  emulate_push(ctxt);
  break;
 }
 case 4:
  c->eip = c->src.val;
  break;
 case 6:
  emulate_push(ctxt);
  break;
 }
 return X86EMUL_CONTINUE;
}
