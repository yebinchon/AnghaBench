
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_segment {unsigned int selector; int type; unsigned int dpl; int present; int s; scalar_t__ unusable; } ;


 int AR_TYPE_ACCESSES_MASK ;
 int AR_TYPE_CODE_MASK ;
 int AR_TYPE_WRITEABLE_MASK ;
 unsigned int SELECTOR_RPL_MASK ;
 int VCPU_SREG_CS ;
 int vmx_get_segment (struct kvm_vcpu*,struct kvm_segment*,int ) ;

__attribute__((used)) static bool code_segment_valid(struct kvm_vcpu *vcpu)
{
 struct kvm_segment cs;
 unsigned int cs_rpl;

 vmx_get_segment(vcpu, &cs, VCPU_SREG_CS);
 cs_rpl = cs.selector & SELECTOR_RPL_MASK;

 if (cs.unusable)
  return 0;
 if (~cs.type & (AR_TYPE_CODE_MASK|AR_TYPE_ACCESSES_MASK))
  return 0;
 if (!cs.s)
  return 0;
 if (cs.type & AR_TYPE_WRITEABLE_MASK) {
  if (cs.dpl > cs_rpl)
   return 0;
 } else {
  if (cs.dpl != cs_rpl)
   return 0;
 }
 if (!cs.present)
  return 0;


 return 1;
}
