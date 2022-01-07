
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct intel_uncore_box {int dummy; } ;


 unsigned long long NHMEX_W_PMON_GLOBAL_FIXED_EN ;
 int rdmsrl (unsigned int,unsigned long long) ;
 unsigned int uncore_msr_box_ctl (struct intel_uncore_box*) ;
 scalar_t__ uncore_msr_fixed_ctl (struct intel_uncore_box*) ;
 unsigned long long uncore_num_counters (struct intel_uncore_box*) ;
 int wrmsrl (unsigned int,unsigned long long) ;

__attribute__((used)) static void nhmex_uncore_msr_disable_box(struct intel_uncore_box *box)
{
 unsigned msr = uncore_msr_box_ctl(box);
 u64 config;

 if (msr) {
  rdmsrl(msr, config);
  config &= ~((1ULL << uncore_num_counters(box)) - 1);

  if (uncore_msr_fixed_ctl(box))
   config &= ~NHMEX_W_PMON_GLOBAL_FIXED_EN;
  wrmsrl(msr, config);
 }
}
