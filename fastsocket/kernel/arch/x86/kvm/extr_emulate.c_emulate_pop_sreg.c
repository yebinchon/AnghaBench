
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct x86_emulate_ops {int dummy; } ;
struct decode_cache {int op_bytes; } ;
struct x86_emulate_ctxt {int vcpu; struct decode_cache decode; } ;


 int X86EMUL_CONTINUE ;
 int emulate_pop (struct x86_emulate_ctxt*,struct x86_emulate_ops*,unsigned long*,int ) ;
 int kvm_load_segment_descriptor (int ,int ,int) ;

__attribute__((used)) static int emulate_pop_sreg(struct x86_emulate_ctxt *ctxt,
        struct x86_emulate_ops *ops, int seg)
{
 struct decode_cache *c = &ctxt->decode;
 unsigned long selector;
 int rc;

 rc = emulate_pop(ctxt, ops, &selector, c->op_bytes);
 if (rc != X86EMUL_CONTINUE)
  return rc;

 rc = kvm_load_segment_descriptor(ctxt->vcpu, (u16)selector, seg);
 return rc;
}
