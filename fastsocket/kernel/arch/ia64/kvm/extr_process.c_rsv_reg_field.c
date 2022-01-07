
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int _general_exception (struct kvm_vcpu*) ;

void rsv_reg_field(struct kvm_vcpu *vcpu)
{
 _general_exception(vcpu);
}
