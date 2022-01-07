
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct x86_emulate_ops {int (* read_emulated ) (unsigned long,int*,int,int ) ;int (* cmpxchg_emulated ) (unsigned long,int*,int*,int,int ) ;} ;
struct decode_cache {scalar_t__* regs; } ;
struct x86_emulate_ctxt {int eflags; int vcpu; struct decode_cache decode; } ;


 int EFLG_ZF ;
 size_t VCPU_REGS_RAX ;
 size_t VCPU_REGS_RBX ;
 size_t VCPU_REGS_RCX ;
 size_t VCPU_REGS_RDX ;
 int X86EMUL_CONTINUE ;
 int stub1 (unsigned long,int*,int,int ) ;
 int stub2 (unsigned long,int*,int*,int,int ) ;

__attribute__((used)) static inline int emulate_grp9(struct x86_emulate_ctxt *ctxt,
          struct x86_emulate_ops *ops,
          unsigned long memop)
{
 struct decode_cache *c = &ctxt->decode;
 u64 old, new;
 int rc;

 rc = ops->read_emulated(memop, &old, 8, ctxt->vcpu);
 if (rc != 0)
  return rc;

 if (((u32) (old >> 0) != (u32) c->regs[VCPU_REGS_RAX]) ||
     ((u32) (old >> 32) != (u32) c->regs[VCPU_REGS_RDX])) {

  c->regs[VCPU_REGS_RAX] = (u32) (old >> 0);
  c->regs[VCPU_REGS_RDX] = (u32) (old >> 32);
  ctxt->eflags &= ~EFLG_ZF;

 } else {
  new = ((u64)c->regs[VCPU_REGS_RCX] << 32) |
         (u32) c->regs[VCPU_REGS_RBX];

  rc = ops->cmpxchg_emulated(memop, &old, &new, 8, ctxt->vcpu);
  if (rc != 0)
   return rc;
  ctxt->eflags |= EFLG_ZF;
 }
 return X86EMUL_CONTINUE;
}
