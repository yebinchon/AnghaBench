
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int (* get_msr ) (struct kvm_vcpu*,int ,int *) ;} ;


 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,int ,int *) ;

int kvm_get_msr(struct kvm_vcpu *vcpu, u32 msr_index, u64 *pdata)
{
 return kvm_x86_ops->get_msr(vcpu, msr_index, pdata);
}
