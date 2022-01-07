
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct ia64_pal_retval {int status; int member_3; int member_2; int member_1; int member_0; } ;


 int ia64_pal_prefetch_visibility (unsigned long) ;
 int kvm_get_pal_call_data (struct kvm_vcpu*,unsigned long*,unsigned long*,unsigned long*,unsigned long*) ;
 int remote_pal_prefetch_visibility ;
 int smp_call_function (int ,void*,int) ;

__attribute__((used)) static struct ia64_pal_retval pal_prefetch_visibility(struct kvm_vcpu *vcpu)
{
 struct ia64_pal_retval result = {0, 0, 0, 0};
 unsigned long in0, in1, in2, in3;
 kvm_get_pal_call_data(vcpu, &in0, &in1, &in2, &in3);
 result.status = ia64_pal_prefetch_visibility(in1);
 if (result.status == 0) {


  smp_call_function(remote_pal_prefetch_visibility,
     (void *)in1, 1);

  result.status = 1;
 }
 return result;
}
