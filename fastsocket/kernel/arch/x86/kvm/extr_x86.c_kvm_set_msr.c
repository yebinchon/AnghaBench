
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msr_data {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int (* set_msr ) (struct kvm_vcpu*,struct msr_data*) ;} ;


 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,struct msr_data*) ;

int kvm_set_msr(struct kvm_vcpu *vcpu, struct msr_data *msr)
{
 return kvm_x86_ops->set_msr(vcpu, msr);
}
