
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int ia64_set_pkr (unsigned long,unsigned long) ;

void vcpu_set_pkr(struct kvm_vcpu *vcpu, unsigned long reg, unsigned long val)
{
 ia64_set_pkr(reg, val);
}
