
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct kvm_vcpu {int dummy; } ;
struct descriptor_table {int limit; scalar_t__ base; } ;
struct desc_struct {int dummy; } ;
typedef scalar_t__ gva_t ;


 int GP_VECTOR ;
 int X86EMUL_PROPAGATE_FAULT ;
 int get_segment_descriptor_dtable (struct kvm_vcpu*,int,struct descriptor_table*) ;
 int kvm_inject_page_fault (struct kvm_vcpu*,scalar_t__,int ) ;
 int kvm_queue_exception_e (struct kvm_vcpu*,int ,int) ;
 int kvm_read_guest_virt_system (scalar_t__,struct desc_struct*,int,struct kvm_vcpu*,int *) ;

__attribute__((used)) static int load_guest_segment_descriptor(struct kvm_vcpu *vcpu, u16 selector,
      struct desc_struct *seg_desc)
{
 struct descriptor_table dtable;
 u16 index = selector >> 3;
 int ret;
 u32 err;
 gva_t addr;

 get_segment_descriptor_dtable(vcpu, selector, &dtable);

 if (dtable.limit < index * 8 + 7) {
  kvm_queue_exception_e(vcpu, GP_VECTOR, selector & 0xfffc);
  return 1;
 }
 addr = dtable.base + index * 8;
 ret = kvm_read_guest_virt_system(addr, seg_desc, sizeof(*seg_desc),
      vcpu, &err);
 if (ret == X86EMUL_PROPAGATE_FAULT)
  kvm_inject_page_fault(vcpu, addr, err);

       return ret;
}
