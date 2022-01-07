
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int IA64_GENEX_VECTOR ;
 int inject_guest_interruption (struct kvm_vcpu*,int ) ;

void _general_exception(struct kvm_vcpu *vcpu)
{
 inject_guest_interruption(vcpu, IA64_GENEX_VECTOR);
}
