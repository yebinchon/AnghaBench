
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decode_cache {int modrm_reg; int dst; int src; } ;
struct x86_emulate_ctxt {int eflags; struct decode_cache decode; } ;


 int emulate_2op_SrcB (char*,int ,int ,int ) ;

__attribute__((used)) static inline void emulate_grp2(struct x86_emulate_ctxt *ctxt)
{
 struct decode_cache *c = &ctxt->decode;
 switch (c->modrm_reg) {
 case 0:
  emulate_2op_SrcB("rol", c->src, c->dst, ctxt->eflags);
  break;
 case 1:
  emulate_2op_SrcB("ror", c->src, c->dst, ctxt->eflags);
  break;
 case 2:
  emulate_2op_SrcB("rcl", c->src, c->dst, ctxt->eflags);
  break;
 case 3:
  emulate_2op_SrcB("rcr", c->src, c->dst, ctxt->eflags);
  break;
 case 4:
 case 6:
  emulate_2op_SrcB("sal", c->src, c->dst, ctxt->eflags);
  break;
 case 5:
  emulate_2op_SrcB("shr", c->src, c->dst, ctxt->eflags);
  break;
 case 7:
  emulate_2op_SrcB("sar", c->src, c->dst, ctxt->eflags);
  break;
 }
}
