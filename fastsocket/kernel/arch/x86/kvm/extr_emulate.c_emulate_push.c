
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* ptr; int val; int bytes; int type; } ;
struct TYPE_3__ {int val; } ;
struct decode_cache {int * regs; TYPE_2__ dst; int op_bytes; TYPE_1__ src; } ;
struct x86_emulate_ctxt {struct decode_cache decode; } ;


 int OP_MEM ;
 size_t VCPU_REGS_RSP ;
 scalar_t__ register_address (struct decode_cache*,int ,int ) ;
 int register_address_increment (struct decode_cache*,int *,int ) ;
 int ss_base (struct x86_emulate_ctxt*) ;

__attribute__((used)) static inline void emulate_push(struct x86_emulate_ctxt *ctxt)
{
 struct decode_cache *c = &ctxt->decode;

 c->dst.type = OP_MEM;
 c->dst.bytes = c->op_bytes;
 c->dst.val = c->src.val;
 register_address_increment(c, &c->regs[VCPU_REGS_RSP], -c->op_bytes);
 c->dst.ptr = (void *) register_address(c, ss_base(ctxt),
            c->regs[VCPU_REGS_RSP]);
}
