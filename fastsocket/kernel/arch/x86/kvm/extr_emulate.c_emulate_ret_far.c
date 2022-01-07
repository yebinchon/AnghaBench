
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
typedef int u16 ;
struct x86_emulate_ops {int dummy; } ;
struct decode_cache {unsigned long eip; int op_bytes; } ;
struct x86_emulate_ctxt {int vcpu; struct decode_cache decode; } ;


 int VCPU_SREG_CS ;
 int X86EMUL_CONTINUE ;
 int emulate_pop (struct x86_emulate_ctxt*,struct x86_emulate_ops*,unsigned long*,int) ;
 int kvm_load_segment_descriptor (int ,int ,int ) ;

__attribute__((used)) static int emulate_ret_far(struct x86_emulate_ctxt *ctxt,
      struct x86_emulate_ops *ops)
{
 struct decode_cache *c = &ctxt->decode;
 int rc;
 unsigned long cs;

 rc = emulate_pop(ctxt, ops, &c->eip, c->op_bytes);
 if (rc != X86EMUL_CONTINUE)
  return rc;
 if (c->op_bytes == 4)
  c->eip = (u32)c->eip;
 rc = emulate_pop(ctxt, ops, &cs, c->op_bytes);
 if (rc != X86EMUL_CONTINUE)
  return rc;
 rc = kvm_load_segment_descriptor(ctxt->vcpu, (u16)cs, VCPU_SREG_CS);
 return rc;
}
