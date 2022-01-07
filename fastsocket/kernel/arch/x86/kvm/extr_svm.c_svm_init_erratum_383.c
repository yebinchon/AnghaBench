
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef int u32 ;
struct TYPE_2__ {int x86; } ;


 int MSR_AMD64_DC_CFG ;
 TYPE_1__ boot_cpu_data ;
 int erratum_383_found ;
 int lower_32_bits (unsigned long long) ;
 unsigned long long native_read_msr_safe (int ,int*) ;
 int native_write_msr_safe (int ,int ,int ) ;
 int upper_32_bits (unsigned long long) ;

__attribute__((used)) static void svm_init_erratum_383(void)
{
 u32 low, high;
 int err;
 u64 val;


 if (boot_cpu_data.x86 != 0x10)
  return;


 val = native_read_msr_safe(MSR_AMD64_DC_CFG, &err);
 if (err)
  return;

 val |= (1ULL << 47);

 low = lower_32_bits(val);
 high = upper_32_bits(val);

 native_write_msr_safe(MSR_AMD64_DC_CFG, low, high);

 erratum_383_found = 1;
}
