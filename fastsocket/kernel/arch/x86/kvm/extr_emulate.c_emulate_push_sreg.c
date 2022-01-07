
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; } ;
struct decode_cache {TYPE_1__ src; } ;
struct x86_emulate_ctxt {int vcpu; struct decode_cache decode; } ;
struct kvm_segment {int selector; } ;
struct TYPE_4__ {int (* get_segment ) (int ,struct kvm_segment*,int) ;} ;


 int emulate_push (struct x86_emulate_ctxt*) ;
 TYPE_2__* kvm_x86_ops ;
 int stub1 (int ,struct kvm_segment*,int) ;

__attribute__((used)) static void emulate_push_sreg(struct x86_emulate_ctxt *ctxt, int seg)
{
 struct decode_cache *c = &ctxt->decode;
 struct kvm_segment segment;

 kvm_x86_ops->get_segment(ctxt->vcpu, &segment, seg);

 c->src.val = segment.selector;
 emulate_push(ctxt);
}
