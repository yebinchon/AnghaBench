
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x86_emulate_ops {int dummy; } ;
struct TYPE_2__ {int bytes; int val; } ;
struct decode_cache {TYPE_1__ dst; } ;
struct x86_emulate_ctxt {struct decode_cache decode; } ;


 int emulate_pop (struct x86_emulate_ctxt*,struct x86_emulate_ops*,int *,int ) ;

__attribute__((used)) static inline int emulate_grp1a(struct x86_emulate_ctxt *ctxt,
    struct x86_emulate_ops *ops)
{
 struct decode_cache *c = &ctxt->decode;

 return emulate_pop(ctxt, ops, &c->dst.val, c->dst.bytes);
}
