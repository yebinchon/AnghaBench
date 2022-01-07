
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vmx_segment_field {int base; } ;
struct kvm_vcpu {int dummy; } ;


 struct kvm_vmx_segment_field* kvm_vmx_segment_fields ;
 int vmcs_readl (int ) ;

__attribute__((used)) static u64 vmx_get_segment_base(struct kvm_vcpu *vcpu, int seg)
{
 struct kvm_vmx_segment_field *sf = &kvm_vmx_segment_fields[seg];

 return vmcs_readl(sf->base);
}
