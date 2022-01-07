
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct ia64_pal_retval {int dummy; } ;


 int PAL_CACHE_SUMMARY ;
 int PAL_CALL (struct ia64_pal_retval,int ,int ,int ,int ) ;

struct ia64_pal_retval pal_cache_summary(struct kvm_vcpu *vcpu)
{

 struct ia64_pal_retval result;

 PAL_CALL(result, PAL_CACHE_SUMMARY, 0, 0, 0);
 return result;
}
