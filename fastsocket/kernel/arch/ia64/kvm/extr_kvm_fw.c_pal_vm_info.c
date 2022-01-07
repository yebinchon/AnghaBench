
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct ia64_pal_retval {int v2; int v1; int status; } ;
typedef int pal_tc_info_u_t ;


 int ia64_pal_vm_info (unsigned long,unsigned long,int *,int *) ;
 int kvm_get_pal_call_data (struct kvm_vcpu*,unsigned long*,unsigned long*,unsigned long*,unsigned long*) ;

__attribute__((used)) static struct ia64_pal_retval pal_vm_info(struct kvm_vcpu *vcpu)
{
 struct ia64_pal_retval result;
 unsigned long in0, in1, in2, in3;

 kvm_get_pal_call_data(vcpu, &in0, &in1, &in2, &in3);

 result.status = ia64_pal_vm_info(in1, in2,
   (pal_tc_info_u_t *)&result.v1, &result.v2);

 return result;
}
