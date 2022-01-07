
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct msr_data {unsigned int index; int host_initiated; int data; } ;
struct kvm_vcpu {int dummy; } ;


 int kvm_set_msr (struct kvm_vcpu*,struct msr_data*) ;

__attribute__((used)) static int do_set_msr(struct kvm_vcpu *vcpu, unsigned index, u64 *data)
{
 struct msr_data msr;

 msr.data = *data;
 msr.index = index;
 msr.host_initiated = 1;
 return kvm_set_msr(vcpu, &msr);
}
