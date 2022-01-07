
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sal_ret_values {int dummy; } ;
struct kvm_vcpu {int kvm; } ;


 int kvm_get_sal_call_data (struct kvm_vcpu*,int *,int *,int *,int *,int *,int *,int *,int *) ;
 struct sal_ret_values sal_emulator (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int set_sal_result (struct kvm_vcpu*,struct sal_ret_values) ;

void kvm_sal_emul(struct kvm_vcpu *vcpu)
{

 struct sal_ret_values result;
 u64 index, in1, in2, in3, in4, in5, in6, in7;

 kvm_get_sal_call_data(vcpu, &index, &in1, &in2,
   &in3, &in4, &in5, &in6, &in7);
 result = sal_emulator(vcpu->kvm, index, in1, in2, in3,
     in4, in5, in6, in7);
 set_sal_result(vcpu, result);
}
