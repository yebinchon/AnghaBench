
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int selector; } ;


 int kvm_get_segment (struct kvm_vcpu*,struct kvm_segment*,int) ;
 int kvm_set_segment (struct kvm_vcpu*,struct kvm_segment*,int) ;

__attribute__((used)) static void kvm_load_segment_selector(struct kvm_vcpu *vcpu, u16 sel, int seg)
{
 struct kvm_segment kvm_seg;
 kvm_get_segment(vcpu, &kvm_seg, seg);
 kvm_seg.selector = sel;
 kvm_set_segment(vcpu, &kvm_seg, seg);
}
