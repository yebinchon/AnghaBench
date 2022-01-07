
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct x86_emulate_ops {int (* cmpxchg_emulated ) (unsigned long,int *,int *,int ,int ) ;int (* write_emulated ) (unsigned long,int *,int ,int ) ;} ;
struct TYPE_2__ {int type; int bytes; int val; int * ptr; int orig_val; } ;
struct decode_cache {TYPE_1__ dst; int lock_prefix; } ;
struct x86_emulate_ctxt {int vcpu; struct decode_cache decode; } ;





 int X86EMUL_CONTINUE ;
 int stub1 (unsigned long,int *,int *,int ,int ) ;
 int stub2 (unsigned long,int *,int ,int ) ;

__attribute__((used)) static inline int writeback(struct x86_emulate_ctxt *ctxt,
       struct x86_emulate_ops *ops)
{
 int rc;
 struct decode_cache *c = &ctxt->decode;

 switch (c->dst.type) {
 case 128:



  switch (c->dst.bytes) {
  case 1:
   *(u8 *)c->dst.ptr = (u8)c->dst.val;
   break;
  case 2:
   *(u16 *)c->dst.ptr = (u16)c->dst.val;
   break;
  case 4:
   *c->dst.ptr = (u32)c->dst.val;
   break;
  case 8:
   *c->dst.ptr = c->dst.val;
   break;
  }
  break;
 case 130:
  if (c->lock_prefix)
   rc = ops->cmpxchg_emulated(
     (unsigned long)c->dst.ptr,
     &c->dst.orig_val,
     &c->dst.val,
     c->dst.bytes,
     ctxt->vcpu);
  else
   rc = ops->write_emulated(
     (unsigned long)c->dst.ptr,
     &c->dst.val,
     c->dst.bytes,
     ctxt->vcpu);
  if (rc != 0)
   return rc;
  break;
 case 129:

  break;
 default:
  break;
 }
 return X86EMUL_CONTINUE;
}
