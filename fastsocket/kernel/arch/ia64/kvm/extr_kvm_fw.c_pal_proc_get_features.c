
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct ia64_pal_retval {int v2; int v1; int v0; int status; int member_3; int member_2; int member_1; int member_0; } ;


 int ia64_pal_proc_get_features (int *,int *,int *,long) ;
 int kvm_get_pal_call_data (struct kvm_vcpu*,long*,long*,long*,long*) ;

__attribute__((used)) static struct ia64_pal_retval pal_proc_get_features(struct kvm_vcpu *vcpu)
{

 struct ia64_pal_retval result = {0, 0, 0, 0};
 long in0, in1, in2, in3;

 kvm_get_pal_call_data(vcpu, &in0, &in1, &in2, &in3);
 result.status = ia64_pal_proc_get_features(&result.v0, &result.v1,
   &result.v2, in2);

 return result;
}
