
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct ia64_pal_retval {scalar_t__ v0; scalar_t__ v2; int v1; int status; } ;


 int PAL_CALL (struct ia64_pal_retval,int ,int ,int ,int ) ;
 int PAL_FREQ_BASE ;
 int SAL_FREQ_BASE_PLATFORM ;
 int ia64_sal_freq_base (int ,scalar_t__*,int *) ;

__attribute__((used)) static struct ia64_pal_retval pal_freq_base(struct kvm_vcpu *vcpu)
{

 struct ia64_pal_retval result;

 PAL_CALL(result, PAL_FREQ_BASE, 0, 0, 0);





 if (result.v0 == 0) {
  result.status = ia64_sal_freq_base(SAL_FREQ_BASE_PLATFORM,
       &result.v0,
       &result.v1);
  result.v2 = 0;
 }

 return result;
}
