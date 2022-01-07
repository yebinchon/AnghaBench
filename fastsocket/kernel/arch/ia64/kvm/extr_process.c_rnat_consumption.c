
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int REGISTER ;
 int _nat_consumption_fault (struct kvm_vcpu*,int ,int ) ;

void rnat_consumption(struct kvm_vcpu *vcpu)
{
 _nat_consumption_fault(vcpu, 0, REGISTER);
}
