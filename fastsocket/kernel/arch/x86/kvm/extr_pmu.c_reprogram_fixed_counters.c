
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
struct kvm_pmu {int nr_arch_fixed_counters; int fixed_ctr_ctrl; } ;
struct kvm_pmc {int dummy; } ;


 scalar_t__ fixed_en_pmi (int ,int) ;
 struct kvm_pmc* get_fixed_pmc_idx (struct kvm_pmu*,int) ;
 int reprogram_fixed_counter (struct kvm_pmc*,scalar_t__,int) ;

__attribute__((used)) static void reprogram_fixed_counters(struct kvm_pmu *pmu, u64 data)
{
 int i;

 for (i = 0; i < pmu->nr_arch_fixed_counters; i++) {
  u8 en_pmi = fixed_en_pmi(data, i);
  struct kvm_pmc *pmc = get_fixed_pmc_idx(pmu, i);

  if (fixed_en_pmi(pmu->fixed_ctr_ctrl, i) == en_pmi)
   continue;

  reprogram_fixed_counter(pmc, en_pmi, i);
 }

 pmu->fixed_ctr_ctrl = data;
}
