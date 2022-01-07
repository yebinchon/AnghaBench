
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct ia64_pal_retval {int dummy; } ;


 int INIT_PAL_STATUS_UNIMPLEMENTED (struct ia64_pal_retval) ;

__attribute__((used)) static struct ia64_pal_retval pal_logical_to_physica(struct kvm_vcpu *vcpu)
{
 struct ia64_pal_retval result;

 INIT_PAL_STATUS_UNIMPLEMENTED(result);
 return result;
}
