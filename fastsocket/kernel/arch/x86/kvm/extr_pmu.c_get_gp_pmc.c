
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct kvm_pmu {scalar_t__ nr_arch_gp_counters; struct kvm_pmc* gp_counters; } ;
struct kvm_pmc {int dummy; } ;



__attribute__((used)) static inline struct kvm_pmc *get_gp_pmc(struct kvm_pmu *pmu, u32 msr,
      u32 base)
{
 if (msr >= base && msr < base + pmu->nr_arch_gp_counters)
  return &pmu->gp_counters[msr - base];
 return ((void*)0);
}
