
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int base; int limit; scalar_t__ unusable; } ;
struct descriptor_table {int base; int limit; } ;
struct TYPE_2__ {int (* get_gdt ) (struct kvm_vcpu*,struct descriptor_table*) ;} ;


 int VCPU_SREG_LDTR ;
 int kvm_get_segment (struct kvm_vcpu*,struct kvm_segment*,int ) ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,struct descriptor_table*) ;

__attribute__((used)) static void get_segment_descriptor_dtable(struct kvm_vcpu *vcpu,
       u16 selector,
       struct descriptor_table *dtable)
{
 if (selector & 1 << 2) {
  struct kvm_segment kvm_seg;

  kvm_get_segment(vcpu, &kvm_seg, VCPU_SREG_LDTR);

  if (kvm_seg.unusable)
   dtable->limit = 0;
  else
   dtable->limit = kvm_seg.limit;
  dtable->base = kvm_seg.base;
 }
 else
  kvm_x86_ops->get_gdt(vcpu, dtable);
}
