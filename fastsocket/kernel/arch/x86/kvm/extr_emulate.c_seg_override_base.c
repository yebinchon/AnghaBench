
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_emulate_ctxt {int dummy; } ;
struct decode_cache {int seg_override; int has_seg_override; } ;


 unsigned long seg_base (struct x86_emulate_ctxt*,int ) ;

__attribute__((used)) static unsigned long seg_override_base(struct x86_emulate_ctxt *ctxt,
           struct decode_cache *c)
{
 if (!c->has_seg_override)
  return 0;

 return seg_base(ctxt, c->seg_override);
}
