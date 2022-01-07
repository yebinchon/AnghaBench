
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x86_emulate_ctxt {scalar_t__ mode; int vcpu; } ;
struct TYPE_2__ {unsigned long (* get_segment_base ) (int ,int) ;} ;


 int VCPU_SREG_FS ;
 scalar_t__ X86EMUL_MODE_PROT64 ;
 TYPE_1__* kvm_x86_ops ;
 unsigned long stub1 (int ,int) ;

__attribute__((used)) static unsigned long seg_base(struct x86_emulate_ctxt *ctxt, int seg)
{
 if (ctxt->mode == X86EMUL_MODE_PROT64 && seg < VCPU_SREG_FS)
  return 0;

 return kvm_x86_ops->get_segment_base(ctxt->vcpu, seg);
}
