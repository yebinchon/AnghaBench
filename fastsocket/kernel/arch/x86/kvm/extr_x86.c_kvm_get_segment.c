
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int dummy; } ;
struct TYPE_2__ {int (* get_segment ) (struct kvm_vcpu*,struct kvm_segment*,int) ;} ;


 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,struct kvm_segment*,int) ;

void kvm_get_segment(struct kvm_vcpu *vcpu,
       struct kvm_segment *var, int seg)
{
 kvm_x86_ops->get_segment(vcpu, var, seg);
}
