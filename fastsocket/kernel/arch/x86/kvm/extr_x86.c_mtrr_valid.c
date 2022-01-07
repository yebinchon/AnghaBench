
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ MSR_IA32_CR_PAT ;
 scalar_t__ MSR_MTRRdefType ;
 scalar_t__ MSR_MTRRfix4K_F8000 ;
 scalar_t__ MSR_MTRRfix64K_00000 ;
 int msr_mtrr_valid (scalar_t__) ;
 int valid_mtrr_type (int) ;
 int valid_pat_type (int) ;

__attribute__((used)) static bool mtrr_valid(struct kvm_vcpu *vcpu, u32 msr, u64 data)
{
 int i;

 if (!msr_mtrr_valid(msr))
  return 0;

 if (msr == MSR_IA32_CR_PAT) {
  for (i = 0; i < 8; i++)
   if (!valid_pat_type((data >> (i * 8)) & 0xff))
    return 0;
  return 1;
 } else if (msr == MSR_MTRRdefType) {
  if (data & ~0xcff)
   return 0;
  return valid_mtrr_type(data & 0xff);
 } else if (msr >= MSR_MTRRfix64K_00000 && msr <= MSR_MTRRfix4K_F8000) {
  for (i = 0; i < 8 ; i++)
   if (!valid_mtrr_type((data >> (i * 8)) & 0xff))
    return 0;
  return 1;
 }


 return valid_mtrr_type(data & 0xff);
}
