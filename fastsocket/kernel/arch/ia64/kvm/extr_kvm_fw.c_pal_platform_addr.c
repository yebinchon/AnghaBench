
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct ia64_pal_retval {int dummy; } ;


 int INIT_PAL_STATUS_SUCCESS (struct ia64_pal_retval) ;

__attribute__((used)) static struct ia64_pal_retval pal_platform_addr(struct kvm_vcpu *vcpu)
{

 struct ia64_pal_retval result;

 INIT_PAL_STATUS_SUCCESS(result);
 return result;
}
