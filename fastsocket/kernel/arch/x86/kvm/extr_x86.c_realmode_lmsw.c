
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {unsigned long (* get_rflags ) (struct kvm_vcpu*) ;} ;


 int kvm_lmsw (struct kvm_vcpu*,unsigned long) ;
 TYPE_1__* kvm_x86_ops ;
 unsigned long stub1 (struct kvm_vcpu*) ;

void realmode_lmsw(struct kvm_vcpu *vcpu, unsigned long msw,
     unsigned long *rflags)
{
 kvm_lmsw(vcpu, msw);
 *rflags = kvm_x86_ops->get_rflags(vcpu);
}
