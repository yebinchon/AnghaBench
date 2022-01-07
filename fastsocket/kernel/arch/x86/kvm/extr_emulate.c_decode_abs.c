
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_emulate_ops {int dummy; } ;
struct decode_cache {int ad_bytes; int eip; void* modrm_ea; } ;
struct x86_emulate_ctxt {struct decode_cache decode; } ;


 int X86EMUL_CONTINUE ;
 void* insn_fetch (int ,int,int ) ;
 int u16 ;
 int u32 ;
 int u64 ;

__attribute__((used)) static int decode_abs(struct x86_emulate_ctxt *ctxt,
        struct x86_emulate_ops *ops)
{
 struct decode_cache *c = &ctxt->decode;
 int rc = X86EMUL_CONTINUE;

 switch (c->ad_bytes) {
 case 2:
  c->modrm_ea = insn_fetch(u16, 2, c->eip);
  break;
 case 4:
  c->modrm_ea = insn_fetch(u32, 4, c->eip);
  break;
 case 8:
  c->modrm_ea = insn_fetch(u64, 8, c->eip);
  break;
 }
done:
 return rc;
}
