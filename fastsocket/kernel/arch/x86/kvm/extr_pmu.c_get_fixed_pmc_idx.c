
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_pmu {int dummy; } ;
struct kvm_pmc {int dummy; } ;


 scalar_t__ MSR_CORE_PERF_FIXED_CTR0 ;
 struct kvm_pmc* get_fixed_pmc (struct kvm_pmu*,scalar_t__) ;

__attribute__((used)) static inline struct kvm_pmc *get_fixed_pmc_idx(struct kvm_pmu *pmu, int idx)
{
 return get_fixed_pmc(pmu, MSR_CORE_PERF_FIXED_CTR0 + idx);
}
