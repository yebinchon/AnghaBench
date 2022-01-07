
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {unsigned long (* get_segment_base ) (struct kvm_vcpu*,int) ;} ;


 TYPE_1__* kvm_x86_ops ;
 unsigned long stub1 (struct kvm_vcpu*,int) ;

__attribute__((used)) static unsigned long get_segment_base(struct kvm_vcpu *vcpu, int seg)
{
 return kvm_x86_ops->get_segment_base(vcpu, seg);
}
