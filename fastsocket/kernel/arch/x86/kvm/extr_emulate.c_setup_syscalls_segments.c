
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x86_emulate_ctxt {int vcpu; } ;
struct kvm_segment {int g; int limit; int type; int s; int present; int db; scalar_t__ dpl; scalar_t__ base; scalar_t__ unusable; scalar_t__ l; } ;
struct TYPE_2__ {int (* get_segment ) (int ,struct kvm_segment*,int ) ;} ;


 int VCPU_SREG_CS ;
 TYPE_1__* kvm_x86_ops ;
 int memset (struct kvm_segment*,int ,int) ;
 int stub1 (int ,struct kvm_segment*,int ) ;

__attribute__((used)) static inline void
setup_syscalls_segments(struct x86_emulate_ctxt *ctxt,
 struct kvm_segment *cs, struct kvm_segment *ss)
{
 memset(cs, 0, sizeof(struct kvm_segment));
 kvm_x86_ops->get_segment(ctxt->vcpu, cs, VCPU_SREG_CS);
 memset(ss, 0, sizeof(struct kvm_segment));

 cs->l = 0;
 cs->base = 0;
 cs->g = 1;
 cs->limit = 0xffffffff;
 cs->type = 0x0b;
 cs->s = 1;
 cs->dpl = 0;
 cs->present = 1;
 cs->db = 1;

 ss->unusable = 0;
 ss->base = 0;
 ss->limit = 0xffffffff;
 ss->g = 1;
 ss->s = 1;
 ss->type = 0x03;
 ss->db = 1;
 ss->dpl = 0;
 ss->present = 1;
}
