
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int unusable; int dpl; int type; scalar_t__ s; int present; } ;
struct desc_struct {int type; } ;
struct TYPE_2__ {int (* get_cpl ) (struct kvm_vcpu*) ;} ;


 unsigned int GP_VECTOR ;
 unsigned int NP_VECTOR ;
 unsigned int SS_VECTOR ;

 int VCPU_SREG_GS ;



 int X86EMUL_CONTINUE ;
 int X86EMUL_PROPAGATE_FAULT ;
 int X86_CR0_PE ;
 scalar_t__ is_vm86_segment (struct kvm_vcpu*,int) ;
 int kvm_load_realmode_segment (struct kvm_vcpu*,int,int) ;
 int kvm_queue_exception_e (struct kvm_vcpu*,unsigned int,int) ;
 int kvm_read_cr0_bits (struct kvm_vcpu*,int ) ;
 int kvm_set_segment (struct kvm_vcpu*,struct kvm_segment*,int) ;
 TYPE_1__* kvm_x86_ops ;
 int load_guest_segment_descriptor (struct kvm_vcpu*,int,struct desc_struct*) ;
 int save_guest_segment_descriptor (struct kvm_vcpu*,int,struct desc_struct*) ;
 int seg_desct_to_kvm_desct (struct desc_struct*,int,struct kvm_segment*) ;
 int stub1 (struct kvm_vcpu*) ;

int kvm_load_segment_descriptor(struct kvm_vcpu *vcpu, u16 selector, int seg)
{
 struct kvm_segment kvm_seg;
 struct desc_struct seg_desc;
 u8 dpl, rpl, cpl;
 unsigned err_vec = GP_VECTOR;
 u32 err_code = 0;
 bool null_selector = !(selector & ~0x3);
 int ret;

 if (is_vm86_segment(vcpu, seg) || !(kvm_read_cr0_bits(vcpu, X86_CR0_PE)))
  return kvm_load_realmode_segment(vcpu, selector, seg);


 if ((seg == 131 || seg == 129 || seg == 128)
     && null_selector)
  goto exception;


 if (seg == 128 && (selector & (1 << 2)))
  goto exception;

 ret = load_guest_segment_descriptor(vcpu, selector, &seg_desc);
 if (ret)
  return ret;

 seg_desct_to_kvm_desct(&seg_desc, selector, &kvm_seg);

 if (null_selector) {
  kvm_seg.unusable = 1;
  goto load;
 }

 err_code = selector & 0xfffc;
 err_vec = GP_VECTOR;


 if (seg <= VCPU_SREG_GS && !kvm_seg.s)
  goto exception;

 if (!kvm_seg.present) {
  err_vec = (seg == 129) ? SS_VECTOR : NP_VECTOR;
  goto exception;
 }

 rpl = selector & 3;
 dpl = kvm_seg.dpl;
 cpl = kvm_x86_ops->get_cpl(vcpu);

 switch (seg) {
 case 129:




  if (rpl != cpl || (kvm_seg.type & 0xa) != 0x2 || dpl != cpl)
   goto exception;
  break;
 case 131:
  if (!(kvm_seg.type & 8))
   goto exception;

  if (kvm_seg.type & 4) {

   if (dpl > cpl)
    goto exception;
  } else {

   if (rpl > cpl || dpl != cpl)
    goto exception;
  }

  selector = (selector & 0xfffc) | cpl;
            break;
 case 128:
  if (kvm_seg.s || (kvm_seg.type != 1 && kvm_seg.type != 9))
   goto exception;
  break;
 case 130:
  if (kvm_seg.s || kvm_seg.type != 2)
   goto exception;
  break;
 default:





  if ((kvm_seg.type & 0xa) == 0x8 ||
      (((kvm_seg.type & 0xc) != 0xc) && (rpl > dpl && cpl > dpl)))
   goto exception;
  break;
 }

 if (!kvm_seg.unusable && kvm_seg.s) {

  kvm_seg.type |= 1;
  seg_desc.type |= 1;
  save_guest_segment_descriptor(vcpu, selector, &seg_desc);
 }
load:
 kvm_set_segment(vcpu, &kvm_seg, seg);
 return X86EMUL_CONTINUE;
exception:
 kvm_queue_exception_e(vcpu, err_vec, err_code);
 return X86EMUL_PROPAGATE_FAULT;
}
