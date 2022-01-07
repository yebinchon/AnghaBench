
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 scalar_t__ ia64_get_pkr (unsigned long) ;

unsigned long vcpu_get_pkr(struct kvm_vcpu *vcpu, unsigned long reg)
{
 return ((unsigned long)ia64_get_pkr(reg));
}
