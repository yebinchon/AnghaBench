
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int selector; } ;


 int SELECTOR_RPL_MASK ;
 int VCPU_SREG_CS ;
 int VCPU_SREG_SS ;
 int vmx_get_segment (struct kvm_vcpu*,struct kvm_segment*,int ) ;

__attribute__((used)) static bool cs_ss_rpl_check(struct kvm_vcpu *vcpu)
{
 struct kvm_segment cs, ss;

 vmx_get_segment(vcpu, &cs, VCPU_SREG_CS);
 vmx_get_segment(vcpu, &ss, VCPU_SREG_SS);

 return ((cs.selector & SELECTOR_RPL_MASK) ==
   (ss.selector & SELECTOR_RPL_MASK));
}
