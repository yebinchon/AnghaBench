
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_segment {unsigned int selector; int type; unsigned int dpl; int present; int s; scalar_t__ unusable; } ;


 int AR_TYPE_CODE_MASK ;
 int AR_TYPE_WRITEABLE_MASK ;
 unsigned int SELECTOR_RPL_MASK ;
 int vmx_get_segment (struct kvm_vcpu*,struct kvm_segment*,int) ;

__attribute__((used)) static bool data_segment_valid(struct kvm_vcpu *vcpu, int seg)
{
 struct kvm_segment var;
 unsigned int rpl;

 vmx_get_segment(vcpu, &var, seg);
 rpl = var.selector & SELECTOR_RPL_MASK;

 if (var.unusable)
  return 1;
 if (!var.s)
  return 0;
 if (!var.present)
  return 0;
 if (~var.type & (AR_TYPE_CODE_MASK|AR_TYPE_WRITEABLE_MASK)) {
  if (var.dpl < rpl)
   return 0;
 }




 return 1;
}
