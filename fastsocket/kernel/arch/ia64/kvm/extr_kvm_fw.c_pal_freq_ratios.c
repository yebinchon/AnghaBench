
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {TYPE_2__* kvm; } ;
struct ia64_pal_retval {int dummy; } ;
struct TYPE_3__ {scalar_t__ is_sn2; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 int PAL_CALL (struct ia64_pal_retval,int ,int ,int ,int ) ;
 int PAL_FREQ_RATIOS ;
 int sn2_patch_itc_freq_ratios (struct ia64_pal_retval*) ;

__attribute__((used)) static struct ia64_pal_retval pal_freq_ratios(struct kvm_vcpu *vcpu)
{
 struct ia64_pal_retval result;

 PAL_CALL(result, PAL_FREQ_RATIOS, 0, 0, 0);

 if (vcpu->kvm->arch.is_sn2)
  sn2_patch_itc_freq_ratios(&result);

 return result;
}
