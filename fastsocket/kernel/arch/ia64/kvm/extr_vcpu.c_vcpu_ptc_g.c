
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int vcpu_ptc_ga (struct kvm_vcpu*,int ,int ) ;

void vcpu_ptc_g(struct kvm_vcpu *vcpu, u64 va, u64 ps)
{
 vcpu_ptc_ga(vcpu, va, ps);
}
