
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_emulate_ops {int (* read_emulated ) (int ,void*,int,int ) ;} ;
struct decode_cache {int * regs; } ;
struct x86_emulate_ctxt {int vcpu; struct decode_cache decode; } ;


 size_t VCPU_REGS_RSP ;
 int register_address (struct decode_cache*,int ,int ) ;
 int register_address_increment (struct decode_cache*,int *,int) ;
 int ss_base (struct x86_emulate_ctxt*) ;
 int stub1 (int ,void*,int,int ) ;

__attribute__((used)) static int emulate_pop(struct x86_emulate_ctxt *ctxt,
         struct x86_emulate_ops *ops,
         void *dest, int len)
{
 struct decode_cache *c = &ctxt->decode;
 int rc;

 rc = ops->read_emulated(register_address(c, ss_base(ctxt),
       c->regs[VCPU_REGS_RSP]),
    dest, len, ctxt->vcpu);
 if (rc != 0)
  return rc;

 register_address_increment(c, &c->regs[VCPU_REGS_RSP], len);
 return rc;
}
