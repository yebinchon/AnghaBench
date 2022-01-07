
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int mcg_cap; int mcg_status; int mcg_ctl; int* mce_banks; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int MCG_CTL_P ;
 int MSR_IA32_MC0_CTL ;



__attribute__((used)) static int set_msr_mce(struct kvm_vcpu *vcpu, u32 msr, u64 data)
{
 u64 mcg_cap = vcpu->arch.mcg_cap;
 unsigned bank_num = mcg_cap & 0xff;

 switch (msr) {
 case 128:
  vcpu->arch.mcg_status = data;
  break;
 case 129:
  if (!(mcg_cap & MCG_CTL_P))
   return 1;
  if (data != 0 && data != ~(u64)0)
   return -1;
  vcpu->arch.mcg_ctl = data;
  break;
 default:
  if (msr >= MSR_IA32_MC0_CTL &&
      msr < MSR_IA32_MC0_CTL + 4 * bank_num) {
   u32 offset = msr - MSR_IA32_MC0_CTL;

   if ((offset & 0x3) == 0 &&
       data != 0 && data != ~(u64)0)
    return -1;
   vcpu->arch.mce_banks[offset] = data;
   break;
  }
  return 1;
 }
 return 0;
}
