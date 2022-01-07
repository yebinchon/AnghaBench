
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int selector; int type; int present; scalar_t__ unusable; } ;


 int SELECTOR_TI_MASK ;
 int VCPU_SREG_TR ;
 int vmx_get_segment (struct kvm_vcpu*,struct kvm_segment*,int ) ;

__attribute__((used)) static bool tr_valid(struct kvm_vcpu *vcpu)
{
 struct kvm_segment tr;

 vmx_get_segment(vcpu, &tr, VCPU_SREG_TR);

 if (tr.unusable)
  return 0;
 if (tr.selector & SELECTOR_TI_MASK)
  return 0;
 if (tr.type != 3 && tr.type != 11)
  return 0;
 if (!tr.present)
  return 0;

 return 1;
}
