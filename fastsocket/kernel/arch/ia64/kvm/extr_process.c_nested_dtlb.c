
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int IA64_DATA_NESTED_TLB_VECTOR ;
 int inject_guest_interruption (struct kvm_vcpu*,int ) ;

void nested_dtlb(struct kvm_vcpu *vcpu)
{
 inject_guest_interruption(vcpu, IA64_DATA_NESTED_TLB_VECTOR);
}
