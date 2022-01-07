
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vmcb_seg {int base; } ;
struct kvm_vcpu {int dummy; } ;


 struct vmcb_seg* svm_seg (struct kvm_vcpu*,int) ;

__attribute__((used)) static u64 svm_get_segment_base(struct kvm_vcpu *vcpu, int seg)
{
 struct vmcb_seg *s = svm_seg(vcpu, seg);

 return s->base;
}
