
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef int u32 ;


 int MSR_IA32_MC0_STATUS ;
 int MSR_IA32_MCG_STATUS ;
 int MSR_IA32_MCx_STATUS (int) ;
 int __flush_tlb_all () ;
 int erratum_383_found ;
 int lower_32_bits (unsigned long long) ;
 unsigned long long native_read_msr_safe (int ,int*) ;
 int native_write_msr_safe (int ,int ,int ) ;
 int upper_32_bits (unsigned long long) ;

__attribute__((used)) static bool is_erratum_383(void)
{
 int err, i;
 u64 value;

 if (!erratum_383_found)
  return 0;

 value = native_read_msr_safe(MSR_IA32_MC0_STATUS, &err);
 if (err)
  return 0;


 value &= ~(1ULL << 62);

 if (value != 0xb600000000010015)
  return 0;


 for (i = 0; i < 6; ++i)
  native_write_msr_safe(MSR_IA32_MCx_STATUS(i), 0, 0);

 value = native_read_msr_safe(MSR_IA32_MCG_STATUS, &err);
 if (!err) {
  u32 low, high;

  value &= ~(1ULL << 2);
  low = lower_32_bits(value);
  high = upper_32_bits(value);

  native_write_msr_safe(MSR_IA32_MCG_STATUS, low, high);
 }


 __flush_tlb_all();

 return 1;
}
