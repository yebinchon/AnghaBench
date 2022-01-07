
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef int u16 ;
struct x86_emulate_ops {int (* read_std ) (scalar_t__,int*,int,int ,int *) ;} ;
struct x86_emulate_ctxt {int vcpu; } ;
struct kvm_segment {int limit; scalar_t__ base; scalar_t__ unusable; } ;


 int VCPU_SREG_TR ;
 int X86EMUL_CONTINUE ;
 int kvm_get_segment (int ,struct kvm_segment*,int ) ;
 int stub1 (scalar_t__,int*,int,int ,int *) ;
 int stub2 (scalar_t__,unsigned int*,int,int ,int *) ;

__attribute__((used)) static bool emulator_io_port_access_allowed(struct x86_emulate_ctxt *ctxt,
         struct x86_emulate_ops *ops,
         u16 port, u16 len)
{
 struct kvm_segment tr_seg;
 int r;
 u16 io_bitmap_ptr;
 u8 perm, bit_idx = port & 0x7;
 unsigned mask = (1 << len) - 1;

 kvm_get_segment(ctxt->vcpu, &tr_seg, VCPU_SREG_TR);
 if (tr_seg.unusable)
  return 0;
 if (tr_seg.limit < 103)
  return 0;
 r = ops->read_std(tr_seg.base + 102, &io_bitmap_ptr, 2, ctxt->vcpu,
     ((void*)0));
 if (r != X86EMUL_CONTINUE)
  return 0;
 if (io_bitmap_ptr + port/8 > tr_seg.limit)
  return 0;
 r = ops->read_std(tr_seg.base + io_bitmap_ptr + port/8, &perm, 1,
     ctxt->vcpu, ((void*)0));
 if (r != X86EMUL_CONTINUE)
  return 0;
 if ((perm >> bit_idx) & mask)
  return 0;
 return 1;
}
