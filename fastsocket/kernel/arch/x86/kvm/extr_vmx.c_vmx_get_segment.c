
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vmx_segment_field {int ar_bytes; int selector; int limit; int base; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int type; int s; int dpl; int present; int avl; int l; int db; int g; int unusable; int selector; void* limit; int base; } ;


 int AR_UNUSABLE_MASK ;
 int emulate_invalid_guest_state ;
 struct kvm_vmx_segment_field* kvm_vmx_segment_fields ;
 int vmcs_read16 (int ) ;
 void* vmcs_read32 (int ) ;
 int vmcs_readl (int ) ;

__attribute__((used)) static void vmx_get_segment(struct kvm_vcpu *vcpu,
       struct kvm_segment *var, int seg)
{
 struct kvm_vmx_segment_field *sf = &kvm_vmx_segment_fields[seg];
 u32 ar;

 var->base = vmcs_readl(sf->base);
 var->limit = vmcs_read32(sf->limit);
 var->selector = vmcs_read16(sf->selector);
 ar = vmcs_read32(sf->ar_bytes);
 if ((ar & AR_UNUSABLE_MASK) && !emulate_invalid_guest_state)
  ar = 0;
 var->type = ar & 15;
 var->s = (ar >> 4) & 1;
 var->dpl = (ar >> 5) & 3;
 var->present = (ar >> 7) & 1;
 var->avl = (ar >> 12) & 1;
 var->l = (ar >> 13) & 1;
 var->db = (ar >> 14) & 1;
 var->g = (ar >> 15) & 1;
 var->unusable = (ar >> 16) & 1;
}
