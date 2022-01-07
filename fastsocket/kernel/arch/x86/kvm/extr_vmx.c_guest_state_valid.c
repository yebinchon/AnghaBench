
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int VCPU_SREG_CS ;
 int VCPU_SREG_DS ;
 int VCPU_SREG_ES ;
 int VCPU_SREG_FS ;
 int VCPU_SREG_GS ;
 int VCPU_SREG_SS ;
 int X86_CR0_PE ;
 int code_segment_valid (struct kvm_vcpu*) ;
 int cs_ss_rpl_check (struct kvm_vcpu*) ;
 int data_segment_valid (struct kvm_vcpu*,int ) ;
 int kvm_read_cr0_bits (struct kvm_vcpu*,int ) ;
 int ldtr_valid (struct kvm_vcpu*) ;
 int rmode_segment_valid (struct kvm_vcpu*,int ) ;
 int stack_segment_valid (struct kvm_vcpu*) ;
 int tr_valid (struct kvm_vcpu*) ;

__attribute__((used)) static bool guest_state_valid(struct kvm_vcpu *vcpu)
{

 if (!kvm_read_cr0_bits(vcpu, X86_CR0_PE)) {
  if (!rmode_segment_valid(vcpu, VCPU_SREG_CS))
   return 0;
  if (!rmode_segment_valid(vcpu, VCPU_SREG_SS))
   return 0;
  if (!rmode_segment_valid(vcpu, VCPU_SREG_DS))
   return 0;
  if (!rmode_segment_valid(vcpu, VCPU_SREG_ES))
   return 0;
  if (!rmode_segment_valid(vcpu, VCPU_SREG_FS))
   return 0;
  if (!rmode_segment_valid(vcpu, VCPU_SREG_GS))
   return 0;
 } else {

  if (!cs_ss_rpl_check(vcpu))
   return 0;
  if (!code_segment_valid(vcpu))
   return 0;
  if (!stack_segment_valid(vcpu))
   return 0;
  if (!data_segment_valid(vcpu, VCPU_SREG_DS))
   return 0;
  if (!data_segment_valid(vcpu, VCPU_SREG_ES))
   return 0;
  if (!data_segment_valid(vcpu, VCPU_SREG_FS))
   return 0;
  if (!data_segment_valid(vcpu, VCPU_SREG_GS))
   return 0;
  if (!tr_valid(vcpu))
   return 0;
  if (!ldtr_valid(vcpu))
   return 0;
 }





 return 1;
}
